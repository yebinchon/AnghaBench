; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_dtrace.c_dtaudit_getargdesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_dtrace.c_dtaudit_getargdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.evname_elem = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"char *\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"struct audit_record *\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"const void *\00", align 1
@DTRACE_ARGNONE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"size_t\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, %struct.TYPE_3__*)* @dtaudit_getargdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtaudit_getargdesc(i8* %0, i32 %1, i8* %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca %struct.evname_elem*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %8, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.evname_elem*
  store %struct.evname_elem* %12, %struct.evname_elem** %9, align 8
  store i8* null, i8** %10, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %44 [
    i32 0, label %16
    i32 1, label %17
    i32 2, label %18
    i32 3, label %31
  ]

16:                                               ; preds = %4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %49

17:                                               ; preds = %4
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %49

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.evname_elem*, %struct.evname_elem** %9, align 8
  %21 = getelementptr inbounds %struct.evname_elem, %struct.evname_elem* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %30

25:                                               ; preds = %18
  %26 = load i8*, i8** @DTRACE_ARGNONE, align 8
  %27 = ptrtoint i8* %26 to i32
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %25, %24
  br label %49

31:                                               ; preds = %4
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.evname_elem*, %struct.evname_elem** %9, align 8
  %34 = getelementptr inbounds %struct.evname_elem, %struct.evname_elem* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %43

38:                                               ; preds = %31
  %39 = load i8*, i8** @DTRACE_ARGNONE, align 8
  %40 = ptrtoint i8* %39 to i32
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %38, %37
  br label %49

44:                                               ; preds = %4
  %45 = load i8*, i8** @DTRACE_ARGNONE, align 8
  %46 = ptrtoint i8* %45 to i32
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %44, %43, %30, %17, %16
  %50 = load i8*, i8** %10, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %10, align 8
  %57 = call i32 @strlcpy(i32 %55, i8* %56, i32 4)
  br label %58

58:                                               ; preds = %52, %49
  ret void
}

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
