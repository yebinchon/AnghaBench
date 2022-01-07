; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mambo/extr_mambo_disk.c_mambodisk_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mambo/extr_mambo_disk.c_mambodisk_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mambodisk_softc = type { i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.bio = type { i64, i64, i8*, i64, i32, i64, i32 }

@PRIBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"jobqueue\00", align 1
@BIO_READ = common dso_local global i64 0, align 8
@MAMBO_DISK_READ = common dso_local global i32 0, align 4
@BIO_WRITE = common dso_local global i64 0, align 8
@MAMBO_DISK_WRITE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@BIO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mambodisk_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mambodisk_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mambodisk_softc*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = bitcast i8* %13 to %struct.mambodisk_softc*
  store %struct.mambodisk_softc* %14, %struct.mambodisk_softc** %3, align 8
  %15 = load %struct.mambodisk_softc*, %struct.mambodisk_softc** %3, align 8
  %16 = getelementptr inbounds %struct.mambodisk_softc, %struct.mambodisk_softc* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @device_get_unit(i32 %18)
  store i32 %19, i32* %10, align 4
  br label %20

20:                                               ; preds = %177, %1
  %21 = load %struct.mambodisk_softc*, %struct.mambodisk_softc** %3, align 8
  %22 = getelementptr inbounds %struct.mambodisk_softc, %struct.mambodisk_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %180

25:                                               ; preds = %20
  %26 = load %struct.mambodisk_softc*, %struct.mambodisk_softc** %3, align 8
  %27 = call i32 @MBODISK_LOCK(%struct.mambodisk_softc* %26)
  br label %28

28:                                               ; preds = %49, %25
  %29 = load %struct.mambodisk_softc*, %struct.mambodisk_softc** %3, align 8
  %30 = getelementptr inbounds %struct.mambodisk_softc, %struct.mambodisk_softc* %29, i32 0, i32 3
  %31 = call %struct.bio* @bioq_first(i32* %30)
  store %struct.bio* %31, %struct.bio** %4, align 8
  %32 = load %struct.bio*, %struct.bio** %4, align 8
  %33 = icmp eq %struct.bio* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.mambodisk_softc*, %struct.mambodisk_softc** %3, align 8
  %36 = load %struct.mambodisk_softc*, %struct.mambodisk_softc** %3, align 8
  %37 = getelementptr inbounds %struct.mambodisk_softc, %struct.mambodisk_softc* %36, i32 0, i32 4
  %38 = load i32, i32* @PRIBIO, align 4
  %39 = call i32 @msleep(%struct.mambodisk_softc* %35, i32* %37, i32 %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %40

40:                                               ; preds = %34, %28
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.bio*, %struct.bio** %4, align 8
  %43 = icmp eq %struct.bio* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load %struct.mambodisk_softc*, %struct.mambodisk_softc** %3, align 8
  %46 = getelementptr inbounds %struct.mambodisk_softc, %struct.mambodisk_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br label %49

49:                                               ; preds = %44, %41
  %50 = phi i1 [ false, %41 ], [ %48, %44 ]
  br i1 %50, label %28, label %51

51:                                               ; preds = %49
  %52 = load %struct.bio*, %struct.bio** %4, align 8
  %53 = icmp ne %struct.bio* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load %struct.mambodisk_softc*, %struct.mambodisk_softc** %3, align 8
  %56 = getelementptr inbounds %struct.mambodisk_softc, %struct.mambodisk_softc* %55, i32 0, i32 3
  %57 = load %struct.bio*, %struct.bio** %4, align 8
  %58 = call i32 @bioq_remove(i32* %56, %struct.bio* %57)
  br label %59

59:                                               ; preds = %54, %51
  %60 = load %struct.mambodisk_softc*, %struct.mambodisk_softc** %3, align 8
  %61 = call i32 @MBODISK_UNLOCK(%struct.mambodisk_softc* %60)
  %62 = load %struct.mambodisk_softc*, %struct.mambodisk_softc** %3, align 8
  %63 = getelementptr inbounds %struct.mambodisk_softc, %struct.mambodisk_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %59
  br label %180

67:                                               ; preds = %59
  %68 = load %struct.mambodisk_softc*, %struct.mambodisk_softc** %3, align 8
  %69 = getelementptr inbounds %struct.mambodisk_softc, %struct.mambodisk_softc* %68, i32 0, i32 2
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %5, align 8
  %73 = load %struct.bio*, %struct.bio** %4, align 8
  %74 = getelementptr inbounds %struct.bio, %struct.bio* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.bio*, %struct.bio** %4, align 8
  %77 = getelementptr inbounds %struct.bio, %struct.bio* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %5, align 8
  %80 = udiv i64 %78, %79
  %81 = add i64 %75, %80
  store i64 %81, i64* %8, align 8
  %82 = load %struct.bio*, %struct.bio** %4, align 8
  %83 = getelementptr inbounds %struct.bio, %struct.bio* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %7, align 8
  br label %85

85:                                               ; preds = %152, %67
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* %8, align 8
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %89, label %157

89:                                               ; preds = %85
  %90 = load %struct.bio*, %struct.bio** %4, align 8
  %91 = getelementptr inbounds %struct.bio, %struct.bio* %90, i32 0, i32 2
  %92 = load i8*, i8** %91, align 8
  %93 = load i64, i64* %7, align 8
  %94 = load %struct.bio*, %struct.bio** %4, align 8
  %95 = getelementptr inbounds %struct.bio, %struct.bio* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = sub nsw i64 %93, %96
  %98 = load i64, i64* %5, align 8
  %99 = mul i64 %97, %98
  %100 = getelementptr inbounds i8, i8* %92, i64 %99
  store i8* %100, i8** %12, align 8
  %101 = load i64, i64* %8, align 8
  %102 = load i64, i64* %7, align 8
  %103 = sub nsw i64 %101, %102
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load %struct.mambodisk_softc*, %struct.mambodisk_softc** %3, align 8
  %107 = getelementptr inbounds %struct.mambodisk_softc, %struct.mambodisk_softc* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp sgt i32 %105, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %89
  %111 = load %struct.mambodisk_softc*, %struct.mambodisk_softc** %3, align 8
  %112 = getelementptr inbounds %struct.mambodisk_softc, %struct.mambodisk_softc* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %11, align 4
  br label %114

114:                                              ; preds = %110, %89
  %115 = load %struct.bio*, %struct.bio** %4, align 8
  %116 = getelementptr inbounds %struct.bio, %struct.bio* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @BIO_READ, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %130

120:                                              ; preds = %114
  %121 = load i32, i32* @MAMBO_DISK_READ, align 4
  %122 = load i8*, i8** %12, align 8
  %123 = load i64, i64* %7, align 8
  %124 = trunc i64 %123 to i32
  %125 = load i32, i32* %11, align 4
  %126 = shl i32 %125, 16
  %127 = load i32, i32* %10, align 4
  %128 = or i32 %126, %127
  %129 = call i32 @mambocall(i32 %121, i8* %122, i32 %124, i32 %128)
  store i32 %129, i32* %6, align 4
  br label %148

130:                                              ; preds = %114
  %131 = load %struct.bio*, %struct.bio** %4, align 8
  %132 = getelementptr inbounds %struct.bio, %struct.bio* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @BIO_WRITE, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %146

136:                                              ; preds = %130
  %137 = load i32, i32* @MAMBO_DISK_WRITE, align 4
  %138 = load i8*, i8** %12, align 8
  %139 = load i64, i64* %7, align 8
  %140 = trunc i64 %139 to i32
  %141 = load i32, i32* %11, align 4
  %142 = shl i32 %141, 16
  %143 = load i32, i32* %10, align 4
  %144 = or i32 %142, %143
  %145 = call i32 @mambocall(i32 %137, i8* %138, i32 %140, i32 %144)
  store i32 %145, i32* %6, align 4
  br label %147

146:                                              ; preds = %130
  store i32 1, i32* %6, align 4
  br label %147

147:                                              ; preds = %146, %136
  br label %148

148:                                              ; preds = %147, %120
  %149 = load i32, i32* %6, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  br label %157

152:                                              ; preds = %148
  %153 = load i32, i32* %11, align 4
  %154 = sext i32 %153 to i64
  %155 = load i64, i64* %7, align 8
  %156 = add nsw i64 %155, %154
  store i64 %156, i64* %7, align 8
  br label %85

157:                                              ; preds = %151, %85
  %158 = load i64, i64* %7, align 8
  %159 = load i64, i64* %8, align 8
  %160 = icmp slt i64 %158, %159
  br i1 %160, label %161, label %177

161:                                              ; preds = %157
  %162 = load i32, i32* @EIO, align 4
  %163 = load %struct.bio*, %struct.bio** %4, align 8
  %164 = getelementptr inbounds %struct.bio, %struct.bio* %163, i32 0, i32 6
  store i32 %162, i32* %164, align 8
  %165 = load i64, i64* %8, align 8
  %166 = load i64, i64* %7, align 8
  %167 = sub nsw i64 %165, %166
  %168 = load i64, i64* %5, align 8
  %169 = mul i64 %167, %168
  %170 = load %struct.bio*, %struct.bio** %4, align 8
  %171 = getelementptr inbounds %struct.bio, %struct.bio* %170, i32 0, i32 5
  store i64 %169, i64* %171, align 8
  %172 = load i32, i32* @BIO_ERROR, align 4
  %173 = load %struct.bio*, %struct.bio** %4, align 8
  %174 = getelementptr inbounds %struct.bio, %struct.bio* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = or i32 %175, %172
  store i32 %176, i32* %174, align 8
  br label %177

177:                                              ; preds = %161, %157
  %178 = load %struct.bio*, %struct.bio** %4, align 8
  %179 = call i32 @biodone(%struct.bio* %178)
  br label %20

180:                                              ; preds = %66, %20
  %181 = load %struct.mambodisk_softc*, %struct.mambodisk_softc** %3, align 8
  %182 = call i32 @MBODISK_LOCK(%struct.mambodisk_softc* %181)
  %183 = load %struct.mambodisk_softc*, %struct.mambodisk_softc** %3, align 8
  %184 = getelementptr inbounds %struct.mambodisk_softc, %struct.mambodisk_softc* %183, i32 0, i32 0
  store i32 -1, i32* %184, align 8
  %185 = load %struct.mambodisk_softc*, %struct.mambodisk_softc** %3, align 8
  %186 = call i32 @wakeup(%struct.mambodisk_softc* %185)
  %187 = load %struct.mambodisk_softc*, %struct.mambodisk_softc** %3, align 8
  %188 = call i32 @MBODISK_UNLOCK(%struct.mambodisk_softc* %187)
  %189 = call i32 @kproc_exit(i32 0)
  ret void
}

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @MBODISK_LOCK(%struct.mambodisk_softc*) #1

declare dso_local %struct.bio* @bioq_first(i32*) #1

declare dso_local i32 @msleep(%struct.mambodisk_softc*, i32*, i32, i8*, i32) #1

declare dso_local i32 @bioq_remove(i32*, %struct.bio*) #1

declare dso_local i32 @MBODISK_UNLOCK(%struct.mambodisk_softc*) #1

declare dso_local i32 @mambocall(i32, i8*, i32, i32) #1

declare dso_local i32 @biodone(%struct.bio*) #1

declare dso_local i32 @wakeup(%struct.mambodisk_softc*) #1

declare dso_local i32 @kproc_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
