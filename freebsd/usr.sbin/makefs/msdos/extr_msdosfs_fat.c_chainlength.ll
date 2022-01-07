; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_fat.c_chainlength.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_fat.c_chainlength.c"
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
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.msdosfsmount*, %struct.msdosfsmount** %5, align 8
  %14 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ugt i64 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %150

18:                                               ; preds = %3
  %19 = load %struct.msdosfsmount*, %struct.msdosfsmount** %5, align 8
  %20 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @N_INUSEBITS, align 8
  %23 = udiv i64 %21, %22
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @N_INUSEBITS, align 8
  %26 = udiv i64 %24, %25
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* @N_INUSEBITS, align 8
  %28 = load i64, i64* %6, align 8
  %29 = urem i64 %28, %27
  store i64 %29, i64* %6, align 8
  %30 = load %struct.msdosfsmount*, %struct.msdosfsmount** %5, align 8
  %31 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %10, align 4
  %36 = load i64, i64* %6, align 8
  %37 = trunc i64 %36 to i32
  %38 = shl i32 1, %37
  %39 = sub nsw i32 %38, 1
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %10, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %72

45:                                               ; preds = %18
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @ffs(i32 %46)
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %6, align 8
  %51 = sub i64 %49, %50
  store i64 %51, i64* %11, align 8
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i64 @MIN(i64 %52, i64 %53)
  store i64 %54, i64* %11, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* %11, align 8
  %57 = add i64 %55, %56
  %58 = load %struct.msdosfsmount*, %struct.msdosfsmount** %5, align 8
  %59 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ugt i64 %57, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %45
  %63 = load %struct.msdosfsmount*, %struct.msdosfsmount** %5, align 8
  %64 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %6, align 8
  %67 = sub i64 %65, %66
  %68 = add i64 %67, 1
  store i64 %68, i64* %11, align 8
  br label %69

69:                                               ; preds = %62, %45
  %70 = load i64, i64* %11, align 8
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %4, align 4
  br label %150

72:                                               ; preds = %18
  %73 = load i64, i64* @N_INUSEBITS, align 8
  %74 = load i64, i64* %6, align 8
  %75 = sub i64 %73, %74
  store i64 %75, i64* %11, align 8
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* %7, align 8
  %78 = icmp uge i64 %76, %77
  br i1 %78, label %79, label %98

79:                                               ; preds = %72
  %80 = load i64, i64* %7, align 8
  store i64 %80, i64* %11, align 8
  %81 = load i64, i64* %6, align 8
  %82 = load i64, i64* %11, align 8
  %83 = add i64 %81, %82
  %84 = load %struct.msdosfsmount*, %struct.msdosfsmount** %5, align 8
  %85 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ugt i64 %83, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %79
  %89 = load %struct.msdosfsmount*, %struct.msdosfsmount** %5, align 8
  %90 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %6, align 8
  %93 = sub i64 %91, %92
  %94 = add i64 %93, 1
  store i64 %94, i64* %11, align 8
  br label %95

95:                                               ; preds = %88, %79
  %96 = load i64, i64* %11, align 8
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %4, align 4
  br label %150

98:                                               ; preds = %72
  br label %99

99:                                               ; preds = %125, %98
  %100 = load i64, i64* %8, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %8, align 8
  %102 = load i64, i64* %9, align 8
  %103 = icmp ule i64 %101, %102
  br i1 %103, label %104, label %129

104:                                              ; preds = %99
  %105 = load i64, i64* %11, align 8
  %106 = load i64, i64* %7, align 8
  %107 = icmp uge i64 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  br label %129

109:                                              ; preds = %104
  %110 = load %struct.msdosfsmount*, %struct.msdosfsmount** %5, align 8
  %111 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i64, i64* %8, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %109
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @ffs(i32 %119)
  %121 = sub nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = load i64, i64* %11, align 8
  %124 = add i64 %123, %122
  store i64 %124, i64* %11, align 8
  br label %129

125:                                              ; preds = %109
  %126 = load i64, i64* @N_INUSEBITS, align 8
  %127 = load i64, i64* %11, align 8
  %128 = add i64 %127, %126
  store i64 %128, i64* %11, align 8
  br label %99

129:                                              ; preds = %118, %108, %99
  %130 = load i64, i64* %11, align 8
  %131 = load i64, i64* %7, align 8
  %132 = call i64 @MIN(i64 %130, i64 %131)
  store i64 %132, i64* %11, align 8
  %133 = load i64, i64* %6, align 8
  %134 = load i64, i64* %11, align 8
  %135 = add i64 %133, %134
  %136 = load %struct.msdosfsmount*, %struct.msdosfsmount** %5, align 8
  %137 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ugt i64 %135, %138
  br i1 %139, label %140, label %147

140:                                              ; preds = %129
  %141 = load %struct.msdosfsmount*, %struct.msdosfsmount** %5, align 8
  %142 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* %6, align 8
  %145 = sub i64 %143, %144
  %146 = add i64 %145, 1
  store i64 %146, i64* %11, align 8
  br label %147

147:                                              ; preds = %140, %129
  %148 = load i64, i64* %11, align 8
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %4, align 4
  br label %150

150:                                              ; preds = %147, %95, %69, %17
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local i32 @ffs(i32) #1

declare dso_local i64 @MIN(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
