; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cfi/extr_cfi_disk.c_cfi_disk_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cfi/extr_cfi_disk.c_cfi_disk_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfi_softc = type { i32, i64, i64 }
%struct.bio = type { i64, i64, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [12 x i8] c"sc_width %d\00", align 1
@BIO_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfi_softc*, %struct.bio*)* @cfi_disk_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfi_disk_read(%struct.cfi_softc* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.cfi_softc*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.cfi_softc* %0, %struct.cfi_softc** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %9 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %10 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %23, label %13

13:                                               ; preds = %2
  %14 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %15 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %20 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 4
  br label %23

23:                                               ; preds = %18, %13, %2
  %24 = phi i1 [ true, %13 ], [ true, %2 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32
  %26 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %27 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 @KASSERT(i32 %25, i8* %30)
  %32 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %33 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %23
  %37 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %38 = call i64 @cfi_block_finish(%struct.cfi_softc* %37)
  %39 = load %struct.bio*, %struct.bio** %4, align 8
  %40 = getelementptr inbounds %struct.bio, %struct.bio* %39, i32 0, i32 4
  store i64 %38, i64* %40, align 8
  %41 = load %struct.bio*, %struct.bio** %4, align 8
  %42 = getelementptr inbounds %struct.bio, %struct.bio* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %36
  %46 = load i32, i32* @BIO_ERROR, align 4
  %47 = load %struct.bio*, %struct.bio** %4, align 8
  %48 = getelementptr inbounds %struct.bio, %struct.bio* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %189

51:                                               ; preds = %36
  br label %52

52:                                               ; preds = %51, %23
  %53 = load %struct.bio*, %struct.bio** %4, align 8
  %54 = getelementptr inbounds %struct.bio, %struct.bio* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %57 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %55, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %52
  %61 = load i32, i32* @BIO_ERROR, align 4
  %62 = load %struct.bio*, %struct.bio** %4, align 8
  %63 = getelementptr inbounds %struct.bio, %struct.bio* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load i64, i64* @EIO, align 8
  %67 = load %struct.bio*, %struct.bio** %4, align 8
  %68 = getelementptr inbounds %struct.bio, %struct.bio* %67, i32 0, i32 4
  store i64 %66, i64* %68, align 8
  br label %189

69:                                               ; preds = %52
  %70 = load %struct.bio*, %struct.bio** %4, align 8
  %71 = getelementptr inbounds %struct.bio, %struct.bio* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %5, align 8
  %73 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %74 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %111

77:                                               ; preds = %69
  %78 = load %struct.bio*, %struct.bio** %4, align 8
  %79 = getelementptr inbounds %struct.bio, %struct.bio* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i32*
  store i32* %81, i32** %6, align 8
  br label %82

82:                                               ; preds = %95, %77
  %83 = load i64, i64* %5, align 8
  %84 = icmp sgt i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %82
  %86 = load %struct.bio*, %struct.bio** %4, align 8
  %87 = getelementptr inbounds %struct.bio, %struct.bio* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %90 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp slt i64 %88, %91
  br label %93

93:                                               ; preds = %85, %82
  %94 = phi i1 [ false, %82 ], [ %92, %85 ]
  br i1 %94, label %95, label %110

95:                                               ; preds = %93
  %96 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %97 = load %struct.bio*, %struct.bio** %4, align 8
  %98 = getelementptr inbounds %struct.bio, %struct.bio* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i8* @cfi_read_raw(%struct.cfi_softc* %96, i64 %99)
  %101 = ptrtoint i8* %100 to i32
  %102 = load i32*, i32** %6, align 8
  %103 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %103, i32** %6, align 8
  store i32 %101, i32* %102, align 4
  %104 = load %struct.bio*, %struct.bio** %4, align 8
  %105 = getelementptr inbounds %struct.bio, %struct.bio* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %106, 1
  store i64 %107, i64* %105, align 8
  %108 = load i64, i64* %5, align 8
  %109 = sub nsw i64 %108, 1
  store i64 %109, i64* %5, align 8
  br label %82

110:                                              ; preds = %93
  br label %185

111:                                              ; preds = %69
  %112 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %113 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %114, 2
  br i1 %115, label %116, label %150

116:                                              ; preds = %111
  %117 = load %struct.bio*, %struct.bio** %4, align 8
  %118 = getelementptr inbounds %struct.bio, %struct.bio* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = inttoptr i64 %119 to i32*
  store i32* %120, i32** %7, align 8
  br label %121

121:                                              ; preds = %134, %116
  %122 = load i64, i64* %5, align 8
  %123 = icmp sgt i64 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %121
  %125 = load %struct.bio*, %struct.bio** %4, align 8
  %126 = getelementptr inbounds %struct.bio, %struct.bio* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %129 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp slt i64 %127, %130
  br label %132

132:                                              ; preds = %124, %121
  %133 = phi i1 [ false, %121 ], [ %131, %124 ]
  br i1 %133, label %134, label %149

134:                                              ; preds = %132
  %135 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %136 = load %struct.bio*, %struct.bio** %4, align 8
  %137 = getelementptr inbounds %struct.bio, %struct.bio* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i8* @cfi_read_raw(%struct.cfi_softc* %135, i64 %138)
  %140 = ptrtoint i8* %139 to i32
  %141 = load i32*, i32** %7, align 8
  %142 = getelementptr inbounds i32, i32* %141, i32 1
  store i32* %142, i32** %7, align 8
  store i32 %140, i32* %141, align 4
  %143 = load %struct.bio*, %struct.bio** %4, align 8
  %144 = getelementptr inbounds %struct.bio, %struct.bio* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %145, 2
  store i64 %146, i64* %144, align 8
  %147 = load i64, i64* %5, align 8
  %148 = sub nsw i64 %147, 2
  store i64 %148, i64* %5, align 8
  br label %121

149:                                              ; preds = %132
  br label %184

150:                                              ; preds = %111
  %151 = load %struct.bio*, %struct.bio** %4, align 8
  %152 = getelementptr inbounds %struct.bio, %struct.bio* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = inttoptr i64 %153 to i32*
  store i32* %154, i32** %8, align 8
  br label %155

155:                                              ; preds = %168, %150
  %156 = load i64, i64* %5, align 8
  %157 = icmp sgt i64 %156, 0
  br i1 %157, label %158, label %166

158:                                              ; preds = %155
  %159 = load %struct.bio*, %struct.bio** %4, align 8
  %160 = getelementptr inbounds %struct.bio, %struct.bio* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %163 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = icmp slt i64 %161, %164
  br label %166

166:                                              ; preds = %158, %155
  %167 = phi i1 [ false, %155 ], [ %165, %158 ]
  br i1 %167, label %168, label %183

168:                                              ; preds = %166
  %169 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %170 = load %struct.bio*, %struct.bio** %4, align 8
  %171 = getelementptr inbounds %struct.bio, %struct.bio* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = call i8* @cfi_read_raw(%struct.cfi_softc* %169, i64 %172)
  %174 = ptrtoint i8* %173 to i32
  %175 = load i32*, i32** %8, align 8
  %176 = getelementptr inbounds i32, i32* %175, i32 1
  store i32* %176, i32** %8, align 8
  store i32 %174, i32* %175, align 4
  %177 = load %struct.bio*, %struct.bio** %4, align 8
  %178 = getelementptr inbounds %struct.bio, %struct.bio* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = add nsw i64 %179, 4
  store i64 %180, i64* %178, align 8
  %181 = load i64, i64* %5, align 8
  %182 = sub nsw i64 %181, 4
  store i64 %182, i64* %5, align 8
  br label %155

183:                                              ; preds = %166
  br label %184

184:                                              ; preds = %183, %149
  br label %185

185:                                              ; preds = %184, %110
  %186 = load i64, i64* %5, align 8
  %187 = load %struct.bio*, %struct.bio** %4, align 8
  %188 = getelementptr inbounds %struct.bio, %struct.bio* %187, i32 0, i32 2
  store i64 %186, i64* %188, align 8
  br label %189

189:                                              ; preds = %185, %60, %45
  %190 = load %struct.bio*, %struct.bio** %4, align 8
  %191 = call i32 @biodone(%struct.bio* %190)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @cfi_block_finish(%struct.cfi_softc*) #1

declare dso_local i8* @cfi_read_raw(%struct.cfi_softc*, i64) #1

declare dso_local i32 @biodone(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
