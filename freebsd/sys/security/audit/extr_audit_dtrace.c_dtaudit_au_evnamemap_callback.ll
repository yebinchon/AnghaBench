; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_dtrace.c_dtaudit_au_evnamemap_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_dtrace.c_dtaudit_au_evnamemap_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evname_elem = type { i64, i64, i32* }

@EVNAMEMAP_NAME_SIZE = common dso_local global i32 0, align 4
@dtaudit_id = common dso_local global i32 0, align 4
@dtaudit_module_str = common dso_local global i32 0, align 4
@dtaudit_name_commit_str = common dso_local global i32 0, align 4
@dtaudit_name_bsm_str = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evname_elem*)* @dtaudit_au_evnamemap_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtaudit_au_evnamemap_callback(%struct.evname_elem* %0) #0 {
  %2 = alloca %struct.evname_elem*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.evname_elem* %0, %struct.evname_elem** %2, align 8
  %6 = load i32, i32* @EVNAMEMAP_NAME_SIZE, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %26, %1
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = icmp ult i64 %12, %7
  br i1 %13, label %14, label %29

14:                                               ; preds = %10
  %15 = load %struct.evname_elem*, %struct.evname_elem** %2, align 8
  %16 = getelementptr inbounds %struct.evname_elem, %struct.evname_elem* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call signext i8 @tolower(i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %9, i64 %24
  store i8 %22, i8* %25, align 1
  br label %26

26:                                               ; preds = %14
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %10

29:                                               ; preds = %10
  %30 = load %struct.evname_elem*, %struct.evname_elem** %2, align 8
  %31 = getelementptr inbounds %struct.evname_elem, %struct.evname_elem* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %29
  %35 = load i32, i32* @dtaudit_id, align 4
  %36 = load i32, i32* @dtaudit_module_str, align 4
  %37 = load i32, i32* @dtaudit_name_commit_str, align 4
  %38 = call i64 @dtrace_probe_lookup(i32 %35, i32 %36, i8* %9, i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load i32, i32* @dtaudit_id, align 4
  %42 = load i32, i32* @dtaudit_module_str, align 4
  %43 = load i32, i32* @dtaudit_name_commit_str, align 4
  %44 = load %struct.evname_elem*, %struct.evname_elem** %2, align 8
  %45 = call i8* @dtrace_probe_create(i32 %41, i32 %42, i8* %9, i32 %43, i32 0, %struct.evname_elem* %44)
  %46 = ptrtoint i8* %45 to i64
  %47 = load %struct.evname_elem*, %struct.evname_elem** %2, align 8
  %48 = getelementptr inbounds %struct.evname_elem, %struct.evname_elem* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %40, %34, %29
  %50 = load %struct.evname_elem*, %struct.evname_elem** %2, align 8
  %51 = getelementptr inbounds %struct.evname_elem, %struct.evname_elem* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %49
  %55 = load i32, i32* @dtaudit_id, align 4
  %56 = load i32, i32* @dtaudit_module_str, align 4
  %57 = load i32, i32* @dtaudit_name_bsm_str, align 4
  %58 = call i64 @dtrace_probe_lookup(i32 %55, i32 %56, i8* %9, i32 %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %54
  %61 = load i32, i32* @dtaudit_id, align 4
  %62 = load i32, i32* @dtaudit_module_str, align 4
  %63 = load i32, i32* @dtaudit_name_bsm_str, align 4
  %64 = load %struct.evname_elem*, %struct.evname_elem** %2, align 8
  %65 = call i8* @dtrace_probe_create(i32 %61, i32 %62, i8* %9, i32 %63, i32 0, %struct.evname_elem* %64)
  %66 = ptrtoint i8* %65 to i64
  %67 = load %struct.evname_elem*, %struct.evname_elem** %2, align 8
  %68 = getelementptr inbounds %struct.evname_elem, %struct.evname_elem* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %60, %54, %49
  %70 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %70)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local signext i8 @tolower(i32) #2

declare dso_local i64 @dtrace_probe_lookup(i32, i32, i8*, i32) #2

declare dso_local i8* @dtrace_probe_create(i32, i32, i8*, i32, i32, %struct.evname_elem*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
