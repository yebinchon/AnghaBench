; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_dtrace.c_dtaudit_commit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_dtrace.c_dtaudit_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kaudit_record = type { i32, i64 }
%struct.evname_elem = type { i32, i32, i32*, i64 }

@EVNAMEMAP_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kaudit_record*, i32, i32, i32, i32)* @dtaudit_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtaudit_commit(%struct.kaudit_record* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kaudit_record*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.evname_elem*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.kaudit_record* %0, %struct.kaudit_record** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* @EVNAMEMAP_NAME_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = load %struct.kaudit_record*, %struct.kaudit_record** %7, align 8
  %22 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.evname_elem*
  store %struct.evname_elem* %24, %struct.evname_elem** %14, align 8
  %25 = load %struct.evname_elem*, %struct.evname_elem** %14, align 8
  %26 = icmp eq %struct.evname_elem* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %70

28:                                               ; preds = %5
  %29 = load %struct.evname_elem*, %struct.evname_elem** %14, align 8
  %30 = getelementptr inbounds %struct.evname_elem, %struct.evname_elem* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %66

33:                                               ; preds = %28
  %34 = load %struct.evname_elem*, %struct.evname_elem** %14, align 8
  %35 = call i32 @EVNAME_LOCK(%struct.evname_elem* %34)
  store i32 0, i32* %15, align 4
  br label %36

36:                                               ; preds = %52, %33
  %37 = load i32, i32* %15, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp ult i64 %38, %18
  br i1 %39, label %40, label %55

40:                                               ; preds = %36
  %41 = load %struct.evname_elem*, %struct.evname_elem** %14, align 8
  %42 = getelementptr inbounds %struct.evname_elem, %struct.evname_elem* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %15, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call signext i8 @tolower(i32 %47)
  %49 = load i32, i32* %15, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %20, i64 %50
  store i8 %48, i8* %51, align 1
  br label %52

52:                                               ; preds = %40
  %53 = load i32, i32* %15, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %15, align 4
  br label %36

55:                                               ; preds = %36
  %56 = load %struct.evname_elem*, %struct.evname_elem** %14, align 8
  %57 = call i32 @EVNAME_UNLOCK(%struct.evname_elem* %56)
  %58 = load %struct.evname_elem*, %struct.evname_elem** %14, align 8
  %59 = getelementptr inbounds %struct.evname_elem, %struct.evname_elem* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = ptrtoint i8* %20 to i64
  %62 = load %struct.kaudit_record*, %struct.kaudit_record** %7, align 8
  %63 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %62, i32 0, i32 0
  %64 = ptrtoint i32* %63 to i64
  %65 = call i32 @dtrace_probe(i32 %60, i64 %61, i64 %64, i32 0, i32 0, i32 0)
  br label %66

66:                                               ; preds = %55, %28
  %67 = load %struct.evname_elem*, %struct.evname_elem** %14, align 8
  %68 = getelementptr inbounds %struct.evname_elem, %struct.evname_elem* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %70

70:                                               ; preds = %66, %27
  %71 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %71)
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @EVNAME_LOCK(%struct.evname_elem*) #2

declare dso_local signext i8 @tolower(i32) #2

declare dso_local i32 @EVNAME_UNLOCK(%struct.evname_elem*) #2

declare dso_local i32 @dtrace_probe(i32, i64, i64, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
