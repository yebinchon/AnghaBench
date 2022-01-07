; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octeon_ebt3000_cf.c_cf_identify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octeon_ebt3000_cf.c_cf_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64, i64, i64 }

@CVMX_BOARD_TYPE_SIM = common dso_local global i64 0, align 8
@base_addr = common dso_local global i32 0, align 4
@bus_type = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"Compact flash found in bootbus region %d (%s).\0A\00", align 1
@cf_type = common dso_local global i8** null, align 8
@TF_STATUS = common dso_local global i32 0, align 4
@STATUS_BSY = common dso_local global i32 0, align 4
@NR_TRIES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Compact Flash not present\0A\00", align 1
@WAIT_DELAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"cf\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @cf_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cf_identify(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %9 = call %struct.TYPE_6__* (...) @cvmx_sysinfo_get()
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CVMX_BOARD_TYPE_SIM, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %106

15:                                               ; preds = %2
  %16 = call %struct.TYPE_6__* (...) @cvmx_sysinfo_get()
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %106

22:                                               ; preds = %15
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @cvmx_phys_to_ptr(i64 %23)
  store i32 %24, i32* @base_addr, align 4
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %61, %22
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 8
  br i1 %27, label %28, label %64

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @CVMX_MIO_BOOT_REG_CFGX(i32 %29)
  %31 = call i32 @cvmx_read_csr(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = ashr i64 %36, 16
  %38 = icmp eq i64 %35, %37
  br i1 %38, label %39, label %60

39:                                               ; preds = %28
  %40 = call %struct.TYPE_6__* (...) @cvmx_sysinfo_get()
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i64 128, i64* @bus_type, align 8
  br label %53

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 130, i32 129
  %52 = sext i32 %51 to i64
  store i64 %52, i64* @bus_type, align 8
  br label %53

53:                                               ; preds = %45, %44
  %54 = load i32, i32* %5, align 4
  %55 = load i8**, i8*** @cf_type, align 8
  %56 = load i64, i64* @bus_type, align 8
  %57 = getelementptr inbounds i8*, i8** %55, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %54, i8* %58)
  br label %64

60:                                               ; preds = %28
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %25

64:                                               ; preds = %53, %25
  %65 = load i64, i64* @bus_type, align 8
  switch i64 %65, label %85 [
    i64 129, label %66
    i64 128, label %66
    i64 130, label %84
  ]

66:                                               ; preds = %64, %64
  br label %67

67:                                               ; preds = %80, %66
  %68 = load i32, i32* @TF_STATUS, align 4
  %69 = call i32 @cf_inb_8(i32 %68)
  %70 = load i32, i32* @STATUS_BSY, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %67
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* @NR_TRIES, align 4
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %106

80:                                               ; preds = %73
  %81 = load i32, i32* @WAIT_DELAY, align 4
  %82 = call i32 @DELAY(i32 %81)
  br label %67

83:                                               ; preds = %67
  br label %103

84:                                               ; preds = %64
  br label %85

85:                                               ; preds = %64, %84
  br label %86

86:                                               ; preds = %99, %85
  %87 = load i32, i32* @TF_STATUS, align 4
  %88 = call i32 @cf_inb_16(i32 %87)
  %89 = load i32, i32* @STATUS_BSY, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %86
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* @NR_TRIES, align 4
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %106

99:                                               ; preds = %92
  %100 = load i32, i32* @WAIT_DELAY, align 4
  %101 = call i32 @DELAY(i32 %100)
  br label %86

102:                                              ; preds = %86
  br label %103

103:                                              ; preds = %102, %83
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @BUS_ADD_CHILD(i32 %104, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 0)
  br label %106

106:                                              ; preds = %103, %97, %78, %21, %14
  ret void
}

declare dso_local %struct.TYPE_6__* @cvmx_sysinfo_get(...) #1

declare dso_local i32 @cvmx_phys_to_ptr(i64) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_MIO_BOOT_REG_CFGX(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @cf_inb_8(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @cf_inb_16(i32) #1

declare dso_local i32 @BUS_ADD_CHILD(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
