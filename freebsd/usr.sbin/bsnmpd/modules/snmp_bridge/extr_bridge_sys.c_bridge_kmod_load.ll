; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_sys.c_bridge_kmod_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_sys.c_bridge_kmod_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_stat = type { i32, i32 }

@__const.bridge_kmod_load.mod_name = private unnamed_addr constant [10 x i8] c"if_bridge\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to load %s kernel module\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bridge_kmod_load() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [10 x i8], align 1
  %5 = alloca %struct.module_stat, align 4
  %6 = bitcast [10 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.bridge_kmod_load.mod_name, i32 0, i32 0), i64 10, i1 false)
  %7 = getelementptr inbounds %struct.module_stat, %struct.module_stat* %5, i32 0, i32 0
  store i32 8, i32* %7, align 4
  %8 = call i32 @kldnext(i32 0)
  store i32 %8, i32* %2, align 4
  br label %9

9:                                                ; preds = %35, %0
  %10 = load i32, i32* %2, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %38

12:                                               ; preds = %9
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @kldfirstmod(i32 %13)
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %31, %12
  %16 = load i32, i32* %3, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %15
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @modstat(i32 %19, %struct.module_stat* %5)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %31

23:                                               ; preds = %18
  %24 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %25 = getelementptr inbounds %struct.module_stat, %struct.module_stat* %5, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @strcmp(i8* %24, i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 0, i32* %1, align 4
  br label %47

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %22
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @modfnext(i32 %32)
  store i32 %33, i32* %3, align 4
  br label %15

34:                                               ; preds = %15
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @kldnext(i32 %36)
  store i32 %37, i32* %2, align 4
  br label %9

38:                                               ; preds = %9
  %39 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %40 = call i64 @kldload(i8* %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32, i32* @LOG_ERR, align 4
  %44 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %45 = call i32 @syslog(i32 %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %44)
  store i32 -1, i32* %1, align 4
  br label %47

46:                                               ; preds = %38
  store i32 1, i32* %1, align 4
  br label %47

47:                                               ; preds = %46, %42, %29
  %48 = load i32, i32* %1, align 4
  ret i32 %48
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @kldnext(i32) #2

declare dso_local i32 @kldfirstmod(i32) #2

declare dso_local i64 @modstat(i32, %struct.module_stat*) #2

declare dso_local i64 @strcmp(i8*, i32) #2

declare dso_local i32 @modfnext(i32) #2

declare dso_local i64 @kldload(i8*) #2

declare dso_local i32 @syslog(i32, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
