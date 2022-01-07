; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_reset_scsi_bus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_reset_scsi_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@nc_sien = common dso_local global i32 0, align 4
@RST = common dso_local global i32 0, align 4
@nc_stest3 = common dso_local global i32 0, align 4
@TE = common dso_local global i32 0, align 4
@nc_dcntl = common dso_local global i32 0, align 4
@IRQM = common dso_local global i32 0, align 4
@nc_scntl1 = common dso_local global i32 0, align 4
@CRST = common dso_local global i32 0, align 4
@SYM_SETUP_SCSI_BUS_CHECK = common dso_local global i32 0, align 4
@nc_sstat0 = common dso_local global i32 0, align 4
@nc_sstat2 = common dso_local global i32 0, align 4
@nc_sbdl = common dso_local global i32 0, align 4
@nc_sbcl = common dso_local global i32 0, align 4
@FE_WIDE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"%s: suspicious SCSI data while resetting the BUS.\0A\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"%s: %sdp0,d7-0,rst,req,ack,bsy,sel,atn,msg,c/d,i/o = 0x%lx, expecting 0x%lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"dp1,d15-8,\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @sym_reset_scsi_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sym_reset_scsi_bus(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = call i32 @sym_soft_reset(%struct.TYPE_5__* %7)
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @nc_sien, align 4
  %13 = load i32, i32* @RST, align 4
  %14 = call i32 @OUTW(i32 %12, i32 %13)
  br label %15

15:                                               ; preds = %11, %2
  %16 = load i32, i32* @nc_stest3, align 4
  %17 = load i32, i32* @TE, align 4
  %18 = call i32 @OUTB(i32 %16, i32 %17)
  %19 = load i32, i32* @nc_dcntl, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IRQM, align 4
  %24 = and i32 %22, %23
  %25 = call i32 @OUTB(i32 %19, i32 %24)
  %26 = load i32, i32* @nc_scntl1, align 4
  %27 = load i32, i32* @CRST, align 4
  %28 = call i32 @OUTB(i32 %26, i32 %27)
  %29 = call i32 @UDELAY(i32 200)
  %30 = load i32, i32* @SYM_SETUP_SCSI_BUS_CHECK, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %15
  br label %95

33:                                               ; preds = %15
  %34 = load i32, i32* @nc_sstat0, align 4
  %35 = call i32 @INB(i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, 2
  %38 = shl i32 %37, 7
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %39, 1
  %41 = shl i32 %40, 17
  %42 = add nsw i32 %38, %41
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* @nc_sstat2, align 4
  %44 = call i32 @INB(i32 %43)
  %45 = and i32 %44, 1
  %46 = shl i32 %45, 26
  %47 = load i32, i32* @nc_sbdl, align 4
  %48 = call i32 @INW(i32 %47)
  %49 = and i32 %48, 255
  %50 = shl i32 %49, 9
  %51 = or i32 %46, %50
  %52 = load i32, i32* @nc_sbdl, align 4
  %53 = call i32 @INW(i32 %52)
  %54 = and i32 %53, 65280
  %55 = shl i32 %54, 10
  %56 = or i32 %51, %55
  %57 = load i32, i32* @nc_sbcl, align 4
  %58 = call i32 @INB(i32 %57)
  %59 = or i32 %56, %58
  %60 = load i32, i32* %5, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %5, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @FE_WIDE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %33
  %69 = load i32, i32* %5, align 4
  %70 = and i32 %69, 262143
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %68, %33
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 256
  br i1 %73, label %74, label %94

74:                                               ; preds = %71
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %76 = call i8* @sym_name(%struct.TYPE_5__* %75)
  %77 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %76)
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %79 = call i8* @sym_name(%struct.TYPE_5__* %78)
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @FE_WIDE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %88 = load i32, i32* %5, align 4
  %89 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i8* %79, i8* %87, i32 %88, i32 256)
  %90 = load i32, i32* @SYM_SETUP_SCSI_BUS_CHECK, align 4
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %93

92:                                               ; preds = %74
  store i32 1, i32* %6, align 4
  br label %93

93:                                               ; preds = %92, %74
  br label %94

94:                                               ; preds = %93, %71
  br label %95

95:                                               ; preds = %94, %32
  %96 = load i32, i32* @nc_scntl1, align 4
  %97 = call i32 @OUTB(i32 %96, i32 0)
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local i32 @sym_soft_reset(%struct.TYPE_5__*) #1

declare dso_local i32 @OUTW(i32, i32) #1

declare dso_local i32 @OUTB(i32, i32) #1

declare dso_local i32 @UDELAY(i32) #1

declare dso_local i32 @INB(i32) #1

declare dso_local i32 @INW(i32) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @sym_name(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
