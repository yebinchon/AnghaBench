; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_fdinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_fdinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filedesc = type { i32, i64, i64, i64, i64, %struct.fdescenttbl*, i32, i32, i32, i32 }
%struct.fdescenttbl = type { i32 }
%struct.filedesc0 = type { i32, i32, %struct.filedesc }

@filedesc0_zone = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@CMASK = common dso_local global i32 0, align 4
@NDFILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.filedesc* @fdinit(%struct.filedesc* %0, i32 %1) #0 {
  %3 = alloca %struct.filedesc*, align 8
  %4 = alloca %struct.filedesc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.filedesc0*, align 8
  %7 = alloca %struct.filedesc*, align 8
  store %struct.filedesc* %0, %struct.filedesc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @filedesc0_zone, align 4
  %9 = load i32, i32* @M_WAITOK, align 4
  %10 = load i32, i32* @M_ZERO, align 4
  %11 = or i32 %9, %10
  %12 = call %struct.filedesc0* @uma_zalloc(i32 %8, i32 %11)
  store %struct.filedesc0* %12, %struct.filedesc0** %6, align 8
  %13 = load %struct.filedesc0*, %struct.filedesc0** %6, align 8
  %14 = getelementptr inbounds %struct.filedesc0, %struct.filedesc0* %13, i32 0, i32 2
  store %struct.filedesc* %14, %struct.filedesc** %7, align 8
  %15 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %16 = call i32 @FILEDESC_LOCK_INIT(%struct.filedesc* %15)
  %17 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %18 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %17, i32 0, i32 9
  %19 = call i32 @refcount_init(i32* %18, i32 1)
  %20 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %21 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %20, i32 0, i32 8
  %22 = call i32 @refcount_init(i32* %21, i32 1)
  %23 = load i32, i32* @CMASK, align 4
  %24 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %25 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %24, i32 0, i32 7
  store i32 %23, i32* %25, align 4
  %26 = load %struct.filedesc0*, %struct.filedesc0** %6, align 8
  %27 = getelementptr inbounds %struct.filedesc0, %struct.filedesc0* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %30 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 8
  %31 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %32 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %31, i32 0, i32 0
  store i32 -1, i32* %32, align 8
  %33 = load %struct.filedesc0*, %struct.filedesc0** %6, align 8
  %34 = getelementptr inbounds %struct.filedesc0, %struct.filedesc0* %33, i32 0, i32 0
  %35 = bitcast i32* %34 to %struct.fdescenttbl*
  %36 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %37 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %36, i32 0, i32 5
  store %struct.fdescenttbl* %35, %struct.fdescenttbl** %37, align 8
  %38 = load i32, i32* @NDFILE, align 4
  %39 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %40 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %39, i32 0, i32 5
  %41 = load %struct.fdescenttbl*, %struct.fdescenttbl** %40, align 8
  %42 = getelementptr inbounds %struct.fdescenttbl, %struct.fdescenttbl* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 4
  %43 = load %struct.filedesc*, %struct.filedesc** %4, align 8
  %44 = icmp eq %struct.filedesc* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %2
  %46 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  store %struct.filedesc* %46, %struct.filedesc** %3, align 8
  br label %145

47:                                               ; preds = %2
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %47
  %51 = load %struct.filedesc*, %struct.filedesc** %4, align 8
  %52 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %56 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp sge i64 %54, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %50
  %60 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %61 = load %struct.filedesc*, %struct.filedesc** %4, align 8
  %62 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = call i32 @fdgrowtable(%struct.filedesc* %60, i64 %65)
  br label %67

67:                                               ; preds = %59, %50, %47
  %68 = load %struct.filedesc*, %struct.filedesc** %4, align 8
  %69 = call i32 @FILEDESC_SLOCK(%struct.filedesc* %68)
  %70 = load %struct.filedesc*, %struct.filedesc** %4, align 8
  %71 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %74 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %73, i32 0, i32 4
  store i64 %72, i64* %74, align 8
  %75 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %76 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %67
  %80 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %81 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @vrefact(i64 %82)
  br label %84

84:                                               ; preds = %79, %67
  %85 = load %struct.filedesc*, %struct.filedesc** %4, align 8
  %86 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %89 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %88, i32 0, i32 3
  store i64 %87, i64* %89, align 8
  %90 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %91 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %84
  %95 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %96 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @vrefact(i64 %97)
  br label %99

99:                                               ; preds = %94, %84
  %100 = load %struct.filedesc*, %struct.filedesc** %4, align 8
  %101 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %104 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %103, i32 0, i32 2
  store i64 %102, i64* %104, align 8
  %105 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %106 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %99
  %110 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %111 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @vrefact(i64 %112)
  br label %114

114:                                              ; preds = %109, %99
  %115 = load i32, i32* %5, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %114
  %118 = load %struct.filedesc*, %struct.filedesc** %4, align 8
  %119 = call i32 @FILEDESC_SUNLOCK(%struct.filedesc* %118)
  br label %143

120:                                              ; preds = %114
  br label %121

121:                                              ; preds = %130, %120
  %122 = load %struct.filedesc*, %struct.filedesc** %4, align 8
  %123 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = sext i32 %124 to i64
  %126 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %127 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp sge i64 %125, %128
  br i1 %129, label %130, label %142

130:                                              ; preds = %121
  %131 = load %struct.filedesc*, %struct.filedesc** %4, align 8
  %132 = call i32 @FILEDESC_SUNLOCK(%struct.filedesc* %131)
  %133 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %134 = load %struct.filedesc*, %struct.filedesc** %4, align 8
  %135 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = call i32 @fdgrowtable(%struct.filedesc* %133, i64 %138)
  %140 = load %struct.filedesc*, %struct.filedesc** %4, align 8
  %141 = call i32 @FILEDESC_SLOCK(%struct.filedesc* %140)
  br label %121

142:                                              ; preds = %121
  br label %143

143:                                              ; preds = %142, %117
  %144 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  store %struct.filedesc* %144, %struct.filedesc** %3, align 8
  br label %145

145:                                              ; preds = %143, %45
  %146 = load %struct.filedesc*, %struct.filedesc** %3, align 8
  ret %struct.filedesc* %146
}

declare dso_local %struct.filedesc0* @uma_zalloc(i32, i32) #1

declare dso_local i32 @FILEDESC_LOCK_INIT(%struct.filedesc*) #1

declare dso_local i32 @refcount_init(i32*, i32) #1

declare dso_local i32 @fdgrowtable(%struct.filedesc*, i64) #1

declare dso_local i32 @FILEDESC_SLOCK(%struct.filedesc*) #1

declare dso_local i32 @vrefact(i64) #1

declare dso_local i32 @FILEDESC_SUNLOCK(%struct.filedesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
