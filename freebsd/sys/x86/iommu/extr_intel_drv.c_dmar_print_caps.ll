; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_drv.c_dmar_print_caps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_drv.c_dmar_print_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [45 x i8] c"regs@0x%08jx, ver=%d.%d, seg=%d, flags=<%b>\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"\10\01INCLUDE_ALL_PCI\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"cap=%b,\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"\10\04AFL\05WBF\06PLMR\07PHMR\08CM\17ZLR\18ISOCH\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%b, \00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"\10\08PSI\17DWD\18DRD\19FL1GP\1CPSI\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"ndoms=%d, sagaw=%d, mgaw=%d, fro=%d, nfr=%d, superp=%d\00", align 1
@DMAR_CAP_PSI = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c", mamv=%d\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"ecap=%b,\00", align 1
@.str.10 = private unnamed_addr constant [58 x i8] c"\10\01C\02QI\03DI\04IR\05EIM\07PT\08SC\19ECS\1AMTS\1BNEST\1CDIS\1DPASID\1EPRS\1FERS SRS\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"\10\02NWFS\03EAFS\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"mhmw=%d, iro=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.dmar_unit*, %struct.TYPE_3__*)* @dmar_print_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmar_print_caps(i32 %0, %struct.dmar_unit* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dmar_unit*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.dmar_unit* %1, %struct.dmar_unit** %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = load %struct.dmar_unit*, %struct.dmar_unit** %5, align 8
  %15 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @DMAR_MAJOR_VER(i32 %16)
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  %20 = load %struct.dmar_unit*, %struct.dmar_unit** %5, align 8
  %21 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @DMAR_MINOR_VER(i32 %22)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i32, i8*, i32, i8*, ...) @device_printf(i32 %9, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %13, i8* %19, i32 %23, i32 %26, i32 %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.dmar_unit*, %struct.dmar_unit** %5, align 8
  %32 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.dmar_unit*, %struct.dmar_unit** %5, align 8
  %37 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, i32, i8*, ...) @device_printf(i32 %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %40 = load i32, i32* %7, align 4
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %42 = load %struct.dmar_unit*, %struct.dmar_unit** %5, align 8
  %43 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @DMAR_CAP_ND(i32 %44)
  %46 = load %struct.dmar_unit*, %struct.dmar_unit** %5, align 8
  %47 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @DMAR_CAP_SAGAW(i32 %48)
  %50 = load %struct.dmar_unit*, %struct.dmar_unit** %5, align 8
  %51 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @DMAR_CAP_MGAW(i32 %52)
  %54 = load %struct.dmar_unit*, %struct.dmar_unit** %5, align 8
  %55 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @DMAR_CAP_FRO(i32 %56)
  %58 = load %struct.dmar_unit*, %struct.dmar_unit** %5, align 8
  %59 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @DMAR_CAP_NFR(i32 %60)
  %62 = load %struct.dmar_unit*, %struct.dmar_unit** %5, align 8
  %63 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @DMAR_CAP_SPS(i32 %64)
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0), i32 %45, i32 %49, i32 %53, i32 %57, i32 %61, i32 %65)
  %67 = load %struct.dmar_unit*, %struct.dmar_unit** %5, align 8
  %68 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @DMAR_CAP_PSI, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %3
  %74 = load %struct.dmar_unit*, %struct.dmar_unit** %5, align 8
  %75 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @DMAR_CAP_MAMV(i32 %76)
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %73, %3
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %81 = load %struct.dmar_unit*, %struct.dmar_unit** %5, align 8
  %82 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = ashr i32 %83, 32
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %4, align 4
  %86 = load %struct.dmar_unit*, %struct.dmar_unit** %5, align 8
  %87 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i32, i8*, i32, i8*, ...) @device_printf(i32 %85, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %88, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.10, i64 0, i64 0))
  %90 = load i32, i32* %8, align 4
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %92 = load %struct.dmar_unit*, %struct.dmar_unit** %5, align 8
  %93 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @DMAR_ECAP_MHMV(i32 %94)
  %96 = load %struct.dmar_unit*, %struct.dmar_unit** %5, align 8
  %97 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @DMAR_ECAP_IRO(i32 %98)
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32 %95, i32 %99)
  ret void
}

declare dso_local i32 @device_printf(i32, i8*, i32, i8*, ...) #1

declare dso_local i32 @DMAR_MAJOR_VER(i32) #1

declare dso_local i32 @DMAR_MINOR_VER(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @DMAR_CAP_ND(i32) #1

declare dso_local i32 @DMAR_CAP_SAGAW(i32) #1

declare dso_local i32 @DMAR_CAP_MGAW(i32) #1

declare dso_local i32 @DMAR_CAP_FRO(i32) #1

declare dso_local i32 @DMAR_CAP_NFR(i32) #1

declare dso_local i32 @DMAR_CAP_SPS(i32) #1

declare dso_local i32 @DMAR_CAP_MAMV(i32) #1

declare dso_local i32 @DMAR_ECAP_MHMV(i32) #1

declare dso_local i32 @DMAR_ECAP_IRO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
