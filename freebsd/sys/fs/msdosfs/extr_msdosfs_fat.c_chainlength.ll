; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_fat.c_chainlength.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_fat.c_chainlength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdosfsmount = type { i64, i32* }

@N_INUSEBITS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msdosfsmount*, i64, i64)* @chainlength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chainlength(%struct.msdosfsmount* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.msdosfsmount*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.msdosfsmount* %0, %struct.msdosfsmount** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.msdosfsmount*, %struct.msdosfsmount** %5, align 8
  %13 = call i32 @MSDOSFS_ASSERT_MP_LOCKED(%struct.msdosfsmount* %12)
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.msdosfsmount*, %struct.msdosfsmount** %5, align 8
  %16 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ugt i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %152

20:                                               ; preds = %3
  %21 = load %struct.msdosfsmount*, %struct.msdosfsmount** %5, align 8
  %22 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @N_INUSEBITS, align 8
  %25 = udiv i64 %23, %24
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @N_INUSEBITS, align 8
  %28 = udiv i64 %26, %27
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* @N_INUSEBITS, align 8
  %30 = load i64, i64* %6, align 8
  %31 = urem i64 %30, %29
  store i64 %31, i64* %6, align 8
  %32 = load %struct.msdosfsmount*, %struct.msdosfsmount** %5, align 8
  %33 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %10, align 4
  %38 = load i64, i64* %6, align 8
  %39 = trunc i64 %38 to i32
  %40 = shl i32 1, %39
  %41 = sub i32 %40, 1
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %10, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %74

47:                                               ; preds = %20
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @ffs(i32 %48)
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* %6, align 8
  %53 = sub i64 %51, %52
  store i64 %53, i64* %11, align 8
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* %7, align 8
  %56 = call i64 @MIN(i64 %54, i64 %55)
  store i64 %56, i64* %11, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* %11, align 8
  %59 = add i64 %57, %58
  %60 = load %struct.msdosfsmount*, %struct.msdosfsmount** %5, align 8
  %61 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ugt i64 %59, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %47
  %65 = load %struct.msdosfsmount*, %struct.msdosfsmount** %5, align 8
  %66 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %6, align 8
  %69 = sub i64 %67, %68
  %70 = add i64 %69, 1
  store i64 %70, i64* %11, align 8
  br label %71

71:                                               ; preds = %64, %47
  %72 = load i64, i64* %11, align 8
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %4, align 4
  br label %152

74:                                               ; preds = %20
  %75 = load i64, i64* @N_INUSEBITS, align 8
  %76 = load i64, i64* %6, align 8
  %77 = sub i64 %75, %76
  store i64 %77, i64* %11, align 8
  %78 = load i64, i64* %11, align 8
  %79 = load i64, i64* %7, align 8
  %80 = icmp uge i64 %78, %79
  br i1 %80, label %81, label %100

81:                                               ; preds = %74
  %82 = load i64, i64* %7, align 8
  store i64 %82, i64* %11, align 8
  %83 = load i64, i64* %6, align 8
  %84 = load i64, i64* %11, align 8
  %85 = add i64 %83, %84
  %86 = load %struct.msdosfsmount*, %struct.msdosfsmount** %5, align 8
  %87 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ugt i64 %85, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %81
  %91 = load %struct.msdosfsmount*, %struct.msdosfsmount** %5, align 8
  %92 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %6, align 8
  %95 = sub i64 %93, %94
  %96 = add i64 %95, 1
  store i64 %96, i64* %11, align 8
  br label %97

97:                                               ; preds = %90, %81
  %98 = load i64, i64* %11, align 8
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %4, align 4
  br label %152

100:                                              ; preds = %74
  br label %101

101:                                              ; preds = %127, %100
  %102 = load i64, i64* %8, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %8, align 8
  %104 = load i64, i64* %9, align 8
  %105 = icmp ule i64 %103, %104
  br i1 %105, label %106, label %131

106:                                              ; preds = %101
  %107 = load i64, i64* %11, align 8
  %108 = load i64, i64* %7, align 8
  %109 = icmp uge i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  br label %131

111:                                              ; preds = %106
  %112 = load %struct.msdosfsmount*, %struct.msdosfsmount** %5, align 8
  %113 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i64, i64* %8, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %10, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %111
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @ffs(i32 %121)
  %123 = sub nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = load i64, i64* %11, align 8
  %126 = add i64 %125, %124
  store i64 %126, i64* %11, align 8
  br label %131

127:                                              ; preds = %111
  %128 = load i64, i64* @N_INUSEBITS, align 8
  %129 = load i64, i64* %11, align 8
  %130 = add i64 %129, %128
  store i64 %130, i64* %11, align 8
  br label %101

131:                                              ; preds = %120, %110, %101
  %132 = load i64, i64* %11, align 8
  %133 = load i64, i64* %7, align 8
  %134 = call i64 @MIN(i64 %132, i64 %133)
  store i64 %134, i64* %11, align 8
  %135 = load i64, i64* %6, align 8
  %136 = load i64, i64* %11, align 8
  %137 = add i64 %135, %136
  %138 = load %struct.msdosfsmount*, %struct.msdosfsmount** %5, align 8
  %139 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ugt i64 %137, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %131
  %143 = load %struct.msdosfsmount*, %struct.msdosfsmount** %5, align 8
  %144 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* %6, align 8
  %147 = sub i64 %145, %146
  %148 = add i64 %147, 1
  store i64 %148, i64* %11, align 8
  br label %149

149:                                              ; preds = %142, %131
  %150 = load i64, i64* %11, align 8
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %4, align 4
  br label %152

152:                                              ; preds = %149, %97, %71, %19
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local i32 @MSDOSFS_ASSERT_MP_LOCKED(%struct.msdosfsmount*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i64 @MIN(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
