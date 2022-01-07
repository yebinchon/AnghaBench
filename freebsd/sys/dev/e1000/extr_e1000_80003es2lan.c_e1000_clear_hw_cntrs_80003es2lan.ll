; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_80003es2lan.c_e1000_clear_hw_cntrs_80003es2lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_80003es2lan.c_e1000_clear_hw_cntrs_80003es2lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"e1000_clear_hw_cntrs_80003es2lan\00", align 1
@E1000_PRC64 = common dso_local global i32 0, align 4
@E1000_PRC127 = common dso_local global i32 0, align 4
@E1000_PRC255 = common dso_local global i32 0, align 4
@E1000_PRC511 = common dso_local global i32 0, align 4
@E1000_PRC1023 = common dso_local global i32 0, align 4
@E1000_PRC1522 = common dso_local global i32 0, align 4
@E1000_PTC64 = common dso_local global i32 0, align 4
@E1000_PTC127 = common dso_local global i32 0, align 4
@E1000_PTC255 = common dso_local global i32 0, align 4
@E1000_PTC511 = common dso_local global i32 0, align 4
@E1000_PTC1023 = common dso_local global i32 0, align 4
@E1000_PTC1522 = common dso_local global i32 0, align 4
@E1000_ALGNERRC = common dso_local global i32 0, align 4
@E1000_RXERRC = common dso_local global i32 0, align 4
@E1000_TNCRS = common dso_local global i32 0, align 4
@E1000_CEXTERR = common dso_local global i32 0, align 4
@E1000_TSCTC = common dso_local global i32 0, align 4
@E1000_TSCTFC = common dso_local global i32 0, align 4
@E1000_MGTPRC = common dso_local global i32 0, align 4
@E1000_MGTPDC = common dso_local global i32 0, align 4
@E1000_MGTPTC = common dso_local global i32 0, align 4
@E1000_IAC = common dso_local global i32 0, align 4
@E1000_ICRXOC = common dso_local global i32 0, align 4
@E1000_ICRXPTC = common dso_local global i32 0, align 4
@E1000_ICRXATC = common dso_local global i32 0, align 4
@E1000_ICTXPTC = common dso_local global i32 0, align 4
@E1000_ICTXATC = common dso_local global i32 0, align 4
@E1000_ICTXQEC = common dso_local global i32 0, align 4
@E1000_ICTXQMTC = common dso_local global i32 0, align 4
@E1000_ICRXDMTC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_hw*)* @e1000_clear_hw_cntrs_80003es2lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_clear_hw_cntrs_80003es2lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %3 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %5 = call i32 @e1000_clear_hw_cntrs_base_generic(%struct.e1000_hw* %4)
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %7 = load i32, i32* @E1000_PRC64, align 4
  %8 = call i32 @E1000_READ_REG(%struct.e1000_hw* %6, i32 %7)
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %10 = load i32, i32* @E1000_PRC127, align 4
  %11 = call i32 @E1000_READ_REG(%struct.e1000_hw* %9, i32 %10)
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %13 = load i32, i32* @E1000_PRC255, align 4
  %14 = call i32 @E1000_READ_REG(%struct.e1000_hw* %12, i32 %13)
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %16 = load i32, i32* @E1000_PRC511, align 4
  %17 = call i32 @E1000_READ_REG(%struct.e1000_hw* %15, i32 %16)
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %19 = load i32, i32* @E1000_PRC1023, align 4
  %20 = call i32 @E1000_READ_REG(%struct.e1000_hw* %18, i32 %19)
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %22 = load i32, i32* @E1000_PRC1522, align 4
  %23 = call i32 @E1000_READ_REG(%struct.e1000_hw* %21, i32 %22)
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %25 = load i32, i32* @E1000_PTC64, align 4
  %26 = call i32 @E1000_READ_REG(%struct.e1000_hw* %24, i32 %25)
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %28 = load i32, i32* @E1000_PTC127, align 4
  %29 = call i32 @E1000_READ_REG(%struct.e1000_hw* %27, i32 %28)
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %31 = load i32, i32* @E1000_PTC255, align 4
  %32 = call i32 @E1000_READ_REG(%struct.e1000_hw* %30, i32 %31)
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %34 = load i32, i32* @E1000_PTC511, align 4
  %35 = call i32 @E1000_READ_REG(%struct.e1000_hw* %33, i32 %34)
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %37 = load i32, i32* @E1000_PTC1023, align 4
  %38 = call i32 @E1000_READ_REG(%struct.e1000_hw* %36, i32 %37)
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %40 = load i32, i32* @E1000_PTC1522, align 4
  %41 = call i32 @E1000_READ_REG(%struct.e1000_hw* %39, i32 %40)
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %43 = load i32, i32* @E1000_ALGNERRC, align 4
  %44 = call i32 @E1000_READ_REG(%struct.e1000_hw* %42, i32 %43)
  %45 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %46 = load i32, i32* @E1000_RXERRC, align 4
  %47 = call i32 @E1000_READ_REG(%struct.e1000_hw* %45, i32 %46)
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %49 = load i32, i32* @E1000_TNCRS, align 4
  %50 = call i32 @E1000_READ_REG(%struct.e1000_hw* %48, i32 %49)
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %52 = load i32, i32* @E1000_CEXTERR, align 4
  %53 = call i32 @E1000_READ_REG(%struct.e1000_hw* %51, i32 %52)
  %54 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %55 = load i32, i32* @E1000_TSCTC, align 4
  %56 = call i32 @E1000_READ_REG(%struct.e1000_hw* %54, i32 %55)
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %58 = load i32, i32* @E1000_TSCTFC, align 4
  %59 = call i32 @E1000_READ_REG(%struct.e1000_hw* %57, i32 %58)
  %60 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %61 = load i32, i32* @E1000_MGTPRC, align 4
  %62 = call i32 @E1000_READ_REG(%struct.e1000_hw* %60, i32 %61)
  %63 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %64 = load i32, i32* @E1000_MGTPDC, align 4
  %65 = call i32 @E1000_READ_REG(%struct.e1000_hw* %63, i32 %64)
  %66 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %67 = load i32, i32* @E1000_MGTPTC, align 4
  %68 = call i32 @E1000_READ_REG(%struct.e1000_hw* %66, i32 %67)
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %70 = load i32, i32* @E1000_IAC, align 4
  %71 = call i32 @E1000_READ_REG(%struct.e1000_hw* %69, i32 %70)
  %72 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %73 = load i32, i32* @E1000_ICRXOC, align 4
  %74 = call i32 @E1000_READ_REG(%struct.e1000_hw* %72, i32 %73)
  %75 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %76 = load i32, i32* @E1000_ICRXPTC, align 4
  %77 = call i32 @E1000_READ_REG(%struct.e1000_hw* %75, i32 %76)
  %78 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %79 = load i32, i32* @E1000_ICRXATC, align 4
  %80 = call i32 @E1000_READ_REG(%struct.e1000_hw* %78, i32 %79)
  %81 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %82 = load i32, i32* @E1000_ICTXPTC, align 4
  %83 = call i32 @E1000_READ_REG(%struct.e1000_hw* %81, i32 %82)
  %84 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %85 = load i32, i32* @E1000_ICTXATC, align 4
  %86 = call i32 @E1000_READ_REG(%struct.e1000_hw* %84, i32 %85)
  %87 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %88 = load i32, i32* @E1000_ICTXQEC, align 4
  %89 = call i32 @E1000_READ_REG(%struct.e1000_hw* %87, i32 %88)
  %90 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %91 = load i32, i32* @E1000_ICTXQMTC, align 4
  %92 = call i32 @E1000_READ_REG(%struct.e1000_hw* %90, i32 %91)
  %93 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %94 = load i32, i32* @E1000_ICRXDMTC, align 4
  %95 = call i32 @E1000_READ_REG(%struct.e1000_hw* %93, i32 %94)
  ret void
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @e1000_clear_hw_cntrs_base_generic(%struct.e1000_hw*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
