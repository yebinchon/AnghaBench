; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_dtrace.c_dtaudit_bsm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_dtrace.c_dtaudit_bsm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kaudit_record = type { i32, i64 }
%struct.evname_elem = type { i32, i32*, i32 }

@EVNAMEMAP_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kaudit_record*, i32, i32, i32, i32, i8*, i64)* @dtaudit_bsm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtaudit_bsm(%struct.kaudit_record* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i64 %6) #0 {
  %8 = alloca %struct.kaudit_record*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.evname_elem*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.kaudit_record* %0, %struct.kaudit_record** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i64 %6, i64* %14, align 8
  %20 = load i32, i32* @EVNAMEMAP_NAME_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %15, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %16, align 8
  %24 = load %struct.kaudit_record*, %struct.kaudit_record** %8, align 8
  %25 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.evname_elem*
  store %struct.evname_elem* %27, %struct.evname_elem** %17, align 8
  %28 = load %struct.evname_elem*, %struct.evname_elem** %17, align 8
  %29 = icmp eq %struct.evname_elem* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %7
  store i32 1, i32* %19, align 4
  br label %73

31:                                               ; preds = %7
  %32 = load %struct.evname_elem*, %struct.evname_elem** %17, align 8
  %33 = getelementptr inbounds %struct.evname_elem, %struct.evname_elem* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  store i32 1, i32* %19, align 4
  br label %73

37:                                               ; preds = %31
  %38 = load %struct.evname_elem*, %struct.evname_elem** %17, align 8
  %39 = call i32 @EVNAME_LOCK(%struct.evname_elem* %38)
  store i32 0, i32* %18, align 4
  br label %40

40:                                               ; preds = %56, %37
  %41 = load i32, i32* %18, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp ult i64 %42, %21
  br i1 %43, label %44, label %59

44:                                               ; preds = %40
  %45 = load %struct.evname_elem*, %struct.evname_elem** %17, align 8
  %46 = getelementptr inbounds %struct.evname_elem, %struct.evname_elem* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %18, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call signext i8 @tolower(i32 %51)
  %53 = load i32, i32* %18, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %23, i64 %54
  store i8 %52, i8* %55, align 1
  br label %56

56:                                               ; preds = %44
  %57 = load i32, i32* %18, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %18, align 4
  br label %40

59:                                               ; preds = %40
  %60 = load %struct.evname_elem*, %struct.evname_elem** %17, align 8
  %61 = call i32 @EVNAME_UNLOCK(%struct.evname_elem* %60)
  %62 = load %struct.evname_elem*, %struct.evname_elem** %17, align 8
  %63 = getelementptr inbounds %struct.evname_elem, %struct.evname_elem* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = ptrtoint i8* %23 to i64
  %66 = load %struct.kaudit_record*, %struct.kaudit_record** %8, align 8
  %67 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %66, i32 0, i32 0
  %68 = ptrtoint i32* %67 to i64
  %69 = load i8*, i8** %13, align 8
  %70 = ptrtoint i8* %69 to i64
  %71 = load i64, i64* %14, align 8
  %72 = call i32 @dtrace_probe(i32 %64, i64 %65, i64 %68, i64 %70, i64 %71, i32 0)
  store i32 0, i32* %19, align 4
  br label %73

73:                                               ; preds = %59, %36, %30
  %74 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %74)
  %75 = load i32, i32* %19, align 4
  switch i32 %75, label %77 [
    i32 0, label %76
    i32 1, label %76
  ]

76:                                               ; preds = %73, %73
  ret void

77:                                               ; preds = %73
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @EVNAME_LOCK(%struct.evname_elem*) #2

declare dso_local signext i8 @tolower(i32) #2

declare dso_local i32 @EVNAME_UNLOCK(%struct.evname_elem*) #2

declare dso_local i32 @dtrace_probe(i32, i64, i64, i64, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
