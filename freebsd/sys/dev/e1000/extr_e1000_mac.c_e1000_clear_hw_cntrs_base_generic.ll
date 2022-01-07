; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_clear_hw_cntrs_base_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_clear_hw_cntrs_base_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"e1000_clear_hw_cntrs_base_generic\00", align 1
@E1000_CRCERRS = common dso_local global i32 0, align 4
@E1000_SYMERRS = common dso_local global i32 0, align 4
@E1000_MPC = common dso_local global i32 0, align 4
@E1000_SCC = common dso_local global i32 0, align 4
@E1000_ECOL = common dso_local global i32 0, align 4
@E1000_MCC = common dso_local global i32 0, align 4
@E1000_LATECOL = common dso_local global i32 0, align 4
@E1000_COLC = common dso_local global i32 0, align 4
@E1000_DC = common dso_local global i32 0, align 4
@E1000_SEC = common dso_local global i32 0, align 4
@E1000_RLEC = common dso_local global i32 0, align 4
@E1000_XONRXC = common dso_local global i32 0, align 4
@E1000_XONTXC = common dso_local global i32 0, align 4
@E1000_XOFFRXC = common dso_local global i32 0, align 4
@E1000_XOFFTXC = common dso_local global i32 0, align 4
@E1000_FCRUC = common dso_local global i32 0, align 4
@E1000_GPRC = common dso_local global i32 0, align 4
@E1000_BPRC = common dso_local global i32 0, align 4
@E1000_MPRC = common dso_local global i32 0, align 4
@E1000_GPTC = common dso_local global i32 0, align 4
@E1000_GORCL = common dso_local global i32 0, align 4
@E1000_GORCH = common dso_local global i32 0, align 4
@E1000_GOTCL = common dso_local global i32 0, align 4
@E1000_GOTCH = common dso_local global i32 0, align 4
@E1000_RNBC = common dso_local global i32 0, align 4
@E1000_RUC = common dso_local global i32 0, align 4
@E1000_RFC = common dso_local global i32 0, align 4
@E1000_ROC = common dso_local global i32 0, align 4
@E1000_RJC = common dso_local global i32 0, align 4
@E1000_TORL = common dso_local global i32 0, align 4
@E1000_TORH = common dso_local global i32 0, align 4
@E1000_TOTL = common dso_local global i32 0, align 4
@E1000_TOTH = common dso_local global i32 0, align 4
@E1000_TPR = common dso_local global i32 0, align 4
@E1000_TPT = common dso_local global i32 0, align 4
@E1000_MPTC = common dso_local global i32 0, align 4
@E1000_BPTC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000_clear_hw_cntrs_base_generic(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %3 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %5 = load i32, i32* @E1000_CRCERRS, align 4
  %6 = call i32 @E1000_READ_REG(%struct.e1000_hw* %4, i32 %5)
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = load i32, i32* @E1000_SYMERRS, align 4
  %9 = call i32 @E1000_READ_REG(%struct.e1000_hw* %7, i32 %8)
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %11 = load i32, i32* @E1000_MPC, align 4
  %12 = call i32 @E1000_READ_REG(%struct.e1000_hw* %10, i32 %11)
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %14 = load i32, i32* @E1000_SCC, align 4
  %15 = call i32 @E1000_READ_REG(%struct.e1000_hw* %13, i32 %14)
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %17 = load i32, i32* @E1000_ECOL, align 4
  %18 = call i32 @E1000_READ_REG(%struct.e1000_hw* %16, i32 %17)
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %20 = load i32, i32* @E1000_MCC, align 4
  %21 = call i32 @E1000_READ_REG(%struct.e1000_hw* %19, i32 %20)
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %23 = load i32, i32* @E1000_LATECOL, align 4
  %24 = call i32 @E1000_READ_REG(%struct.e1000_hw* %22, i32 %23)
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %26 = load i32, i32* @E1000_COLC, align 4
  %27 = call i32 @E1000_READ_REG(%struct.e1000_hw* %25, i32 %26)
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %29 = load i32, i32* @E1000_DC, align 4
  %30 = call i32 @E1000_READ_REG(%struct.e1000_hw* %28, i32 %29)
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %32 = load i32, i32* @E1000_SEC, align 4
  %33 = call i32 @E1000_READ_REG(%struct.e1000_hw* %31, i32 %32)
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %35 = load i32, i32* @E1000_RLEC, align 4
  %36 = call i32 @E1000_READ_REG(%struct.e1000_hw* %34, i32 %35)
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %38 = load i32, i32* @E1000_XONRXC, align 4
  %39 = call i32 @E1000_READ_REG(%struct.e1000_hw* %37, i32 %38)
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %41 = load i32, i32* @E1000_XONTXC, align 4
  %42 = call i32 @E1000_READ_REG(%struct.e1000_hw* %40, i32 %41)
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %44 = load i32, i32* @E1000_XOFFRXC, align 4
  %45 = call i32 @E1000_READ_REG(%struct.e1000_hw* %43, i32 %44)
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %47 = load i32, i32* @E1000_XOFFTXC, align 4
  %48 = call i32 @E1000_READ_REG(%struct.e1000_hw* %46, i32 %47)
  %49 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %50 = load i32, i32* @E1000_FCRUC, align 4
  %51 = call i32 @E1000_READ_REG(%struct.e1000_hw* %49, i32 %50)
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %53 = load i32, i32* @E1000_GPRC, align 4
  %54 = call i32 @E1000_READ_REG(%struct.e1000_hw* %52, i32 %53)
  %55 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %56 = load i32, i32* @E1000_BPRC, align 4
  %57 = call i32 @E1000_READ_REG(%struct.e1000_hw* %55, i32 %56)
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %59 = load i32, i32* @E1000_MPRC, align 4
  %60 = call i32 @E1000_READ_REG(%struct.e1000_hw* %58, i32 %59)
  %61 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %62 = load i32, i32* @E1000_GPTC, align 4
  %63 = call i32 @E1000_READ_REG(%struct.e1000_hw* %61, i32 %62)
  %64 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %65 = load i32, i32* @E1000_GORCL, align 4
  %66 = call i32 @E1000_READ_REG(%struct.e1000_hw* %64, i32 %65)
  %67 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %68 = load i32, i32* @E1000_GORCH, align 4
  %69 = call i32 @E1000_READ_REG(%struct.e1000_hw* %67, i32 %68)
  %70 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %71 = load i32, i32* @E1000_GOTCL, align 4
  %72 = call i32 @E1000_READ_REG(%struct.e1000_hw* %70, i32 %71)
  %73 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %74 = load i32, i32* @E1000_GOTCH, align 4
  %75 = call i32 @E1000_READ_REG(%struct.e1000_hw* %73, i32 %74)
  %76 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %77 = load i32, i32* @E1000_RNBC, align 4
  %78 = call i32 @E1000_READ_REG(%struct.e1000_hw* %76, i32 %77)
  %79 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %80 = load i32, i32* @E1000_RUC, align 4
  %81 = call i32 @E1000_READ_REG(%struct.e1000_hw* %79, i32 %80)
  %82 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %83 = load i32, i32* @E1000_RFC, align 4
  %84 = call i32 @E1000_READ_REG(%struct.e1000_hw* %82, i32 %83)
  %85 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %86 = load i32, i32* @E1000_ROC, align 4
  %87 = call i32 @E1000_READ_REG(%struct.e1000_hw* %85, i32 %86)
  %88 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %89 = load i32, i32* @E1000_RJC, align 4
  %90 = call i32 @E1000_READ_REG(%struct.e1000_hw* %88, i32 %89)
  %91 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %92 = load i32, i32* @E1000_TORL, align 4
  %93 = call i32 @E1000_READ_REG(%struct.e1000_hw* %91, i32 %92)
  %94 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %95 = load i32, i32* @E1000_TORH, align 4
  %96 = call i32 @E1000_READ_REG(%struct.e1000_hw* %94, i32 %95)
  %97 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %98 = load i32, i32* @E1000_TOTL, align 4
  %99 = call i32 @E1000_READ_REG(%struct.e1000_hw* %97, i32 %98)
  %100 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %101 = load i32, i32* @E1000_TOTH, align 4
  %102 = call i32 @E1000_READ_REG(%struct.e1000_hw* %100, i32 %101)
  %103 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %104 = load i32, i32* @E1000_TPR, align 4
  %105 = call i32 @E1000_READ_REG(%struct.e1000_hw* %103, i32 %104)
  %106 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %107 = load i32, i32* @E1000_TPT, align 4
  %108 = call i32 @E1000_READ_REG(%struct.e1000_hw* %106, i32 %107)
  %109 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %110 = load i32, i32* @E1000_MPTC, align 4
  %111 = call i32 @E1000_READ_REG(%struct.e1000_hw* %109, i32 %110)
  %112 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %113 = load i32, i32* @E1000_BPTC, align 4
  %114 = call i32 @E1000_READ_REG(%struct.e1000_hw* %112, i32 %113)
  ret void
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
