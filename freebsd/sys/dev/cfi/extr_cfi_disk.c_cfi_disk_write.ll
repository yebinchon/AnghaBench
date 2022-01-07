; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cfi/extr_cfi_disk.c_cfi_disk_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cfi/extr_cfi_disk.c_cfi_disk_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfi_softc = type { i32, i64, i64, i64, i64, i64 }
%struct.bio = type { i64, i64, i64, i32, i32, i64 }

@.str = private unnamed_addr constant [12 x i8] c"sc_width %d\00", align 1
@BIO_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfi_softc*, %struct.bio*)* @cfi_disk_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfi_disk_write(%struct.cfi_softc* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.cfi_softc*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.cfi_softc* %0, %struct.cfi_softc** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %7 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %8 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %21, label %11

11:                                               ; preds = %2
  %12 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %13 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %18 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 4
  br label %21

21:                                               ; preds = %16, %11, %2
  %22 = phi i1 [ true, %11 ], [ true, %2 ], [ %20, %16 ]
  %23 = zext i1 %22 to i32
  %24 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %25 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @KASSERT(i32 %23, i8* %28)
  %30 = load %struct.bio*, %struct.bio** %4, align 8
  %31 = getelementptr inbounds %struct.bio, %struct.bio* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %34 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %32, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %21
  %38 = load i32, i32* @BIO_ERROR, align 4
  %39 = load %struct.bio*, %struct.bio** %4, align 8
  %40 = getelementptr inbounds %struct.bio, %struct.bio* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load i64, i64* @EIO, align 8
  %44 = load %struct.bio*, %struct.bio** %4, align 8
  %45 = getelementptr inbounds %struct.bio, %struct.bio* %44, i32 0, i32 5
  store i64 %43, i64* %45, align 8
  br label %150

46:                                               ; preds = %21
  %47 = load %struct.bio*, %struct.bio** %4, align 8
  %48 = getelementptr inbounds %struct.bio, %struct.bio* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %5, align 8
  br label %50

50:                                               ; preds = %107, %46
  %51 = load i64, i64* %5, align 8
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %146

53:                                               ; preds = %50
  %54 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %55 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %83

58:                                               ; preds = %53
  %59 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %60 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %63 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %61, %64
  store i64 %65, i64* %6, align 8
  %66 = load %struct.bio*, %struct.bio** %4, align 8
  %67 = getelementptr inbounds %struct.bio, %struct.bio* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %70 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp slt i64 %68, %71
  br i1 %72, label %79, label %73

73:                                               ; preds = %58
  %74 = load %struct.bio*, %struct.bio** %4, align 8
  %75 = getelementptr inbounds %struct.bio, %struct.bio* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %6, align 8
  %78 = icmp sge i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %73, %58
  %80 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %81 = call i32 @cfi_block_finish(%struct.cfi_softc* %80)
  br label %82

82:                                               ; preds = %79, %73
  br label %83

83:                                               ; preds = %82, %53
  %84 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %85 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %107, label %88

88:                                               ; preds = %83
  %89 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %90 = load %struct.bio*, %struct.bio** %4, align 8
  %91 = getelementptr inbounds %struct.bio, %struct.bio* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i64 @cfi_block_start(%struct.cfi_softc* %89, i64 %92)
  %94 = load %struct.bio*, %struct.bio** %4, align 8
  %95 = getelementptr inbounds %struct.bio, %struct.bio* %94, i32 0, i32 5
  store i64 %93, i64* %95, align 8
  %96 = load %struct.bio*, %struct.bio** %4, align 8
  %97 = getelementptr inbounds %struct.bio, %struct.bio* %96, i32 0, i32 5
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %88
  %101 = load i32, i32* @BIO_ERROR, align 4
  %102 = load %struct.bio*, %struct.bio** %4, align 8
  %103 = getelementptr inbounds %struct.bio, %struct.bio* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  br label %150

106:                                              ; preds = %88
  br label %107

107:                                              ; preds = %106, %83
  %108 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %109 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %112 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %110, %113
  store i64 %114, i64* %6, align 8
  %115 = load %struct.bio*, %struct.bio** %4, align 8
  %116 = getelementptr inbounds %struct.bio, %struct.bio* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %119 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.bio*, %struct.bio** %4, align 8
  %122 = getelementptr inbounds %struct.bio, %struct.bio* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %120, %123
  %125 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %126 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = sub nsw i64 %124, %127
  %129 = load i64, i64* %6, align 8
  %130 = load %struct.bio*, %struct.bio** %4, align 8
  %131 = getelementptr inbounds %struct.bio, %struct.bio* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = sub nsw i64 %129, %132
  %134 = load i64, i64* %5, align 8
  %135 = call i64 @MIN(i64 %133, i64 %134)
  %136 = call i32 @bcopy(i32 %117, i64 %128, i64 %135)
  %137 = load i64, i64* %6, align 8
  %138 = load %struct.bio*, %struct.bio** %4, align 8
  %139 = getelementptr inbounds %struct.bio, %struct.bio* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = sub nsw i64 %137, %140
  %142 = load i64, i64* %5, align 8
  %143 = call i64 @MIN(i64 %141, i64 %142)
  %144 = load i64, i64* %5, align 8
  %145 = sub nsw i64 %144, %143
  store i64 %145, i64* %5, align 8
  br label %50

146:                                              ; preds = %50
  %147 = load i64, i64* %5, align 8
  %148 = load %struct.bio*, %struct.bio** %4, align 8
  %149 = getelementptr inbounds %struct.bio, %struct.bio* %148, i32 0, i32 2
  store i64 %147, i64* %149, align 8
  br label %150

150:                                              ; preds = %146, %100, %37
  %151 = load %struct.bio*, %struct.bio** %4, align 8
  %152 = call i32 @biodone(%struct.bio* %151)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @cfi_block_finish(%struct.cfi_softc*) #1

declare dso_local i64 @cfi_block_start(%struct.cfi_softc*, i64) #1

declare dso_local i32 @bcopy(i32, i64, i64) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @biodone(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
