; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hast/extr_hast_snmp.c_set_role.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hast/extr_hast_snmp.c_set_role.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"resource%d\00", align 1
@HASTCTL_CMD_SETROLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"role\00", align 1
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @set_role to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_role(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nv*, align 8
  %7 = alloca %struct.nv*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = call %struct.nv* (...) @nv_alloc()
  store %struct.nv* %9, %struct.nv** %6, align 8
  %10 = load %struct.nv*, %struct.nv** %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @nv_add_string(%struct.nv* %10, i8* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0)
  %13 = load %struct.nv*, %struct.nv** %6, align 8
  %14 = load i32, i32* @HASTCTL_CMD_SETROLE, align 4
  %15 = call i32 @nv_add_uint8(%struct.nv* %13, i32 %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.nv*, %struct.nv** %6, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @nv_add_uint8(%struct.nv* %16, i32 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %19 = load %struct.nv*, %struct.nv** %6, align 8
  %20 = call i32 @hastctl(%struct.nv* %19, %struct.nv** %7)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.nv*, %struct.nv** %6, align 8
  %22 = call i32 @nv_free(%struct.nv* %21)
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %30

26:                                               ; preds = %2
  %27 = load %struct.nv*, %struct.nv** %7, align 8
  %28 = call i32 @nv_free(%struct.nv* %27)
  %29 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %26, %25
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.nv* @nv_alloc(...) #1

declare dso_local i32 @nv_add_string(%struct.nv*, i8*, i8*, i32) #1

declare dso_local i32 @nv_add_uint8(%struct.nv*, i32, i8*) #1

declare dso_local i32 @hastctl(%struct.nv*, %struct.nv**) #1

declare dso_local i32 @nv_free(%struct.nv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
