; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/agents/extr_passwd.c_passwd_mp_lookup_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/agents/extr_passwd.c_passwd_mp_lookup_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32 }

@NS_NOTFOUND = common dso_local global i32 0, align 4
@NS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64*, i8*)* @passwd_mp_lookup_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @passwd_mp_lookup_func(i8** %0, i64* %1, i8* %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.passwd*, align 8
  store i8** %0, i8*** %4, align 8
  store i64* %1, i64** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = call i32 @TRACE_IN(i32 (i8**, i64*, i8*)* @passwd_mp_lookup_func)
  %9 = call %struct.passwd* (...) @getpwent()
  store %struct.passwd* %9, %struct.passwd** %7, align 8
  %10 = load %struct.passwd*, %struct.passwd** %7, align 8
  %11 = icmp ne %struct.passwd* %10, null
  br i1 %11, label %12, label %30

12:                                               ; preds = %3
  %13 = load %struct.passwd*, %struct.passwd** %7, align 8
  %14 = load i64*, i64** %5, align 8
  %15 = call i32 @passwd_marshal_func(%struct.passwd* %13, i8* null, i64* %14)
  %16 = load i64*, i64** %5, align 8
  %17 = load i64, i64* %16, align 8
  %18 = call i8* @malloc(i64 %17)
  %19 = load i8**, i8*** %4, align 8
  store i8* %18, i8** %19, align 8
  %20 = load i8**, i8*** %4, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.passwd*, %struct.passwd** %7, align 8
  %26 = load i8**, i8*** %4, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = load i64*, i64** %5, align 8
  %29 = call i32 @passwd_marshal_func(%struct.passwd* %25, i8* %27, i64* %28)
  br label %30

30:                                               ; preds = %12, %3
  %31 = call i32 @TRACE_OUT(i32 (i8**, i64*, i8*)* @passwd_mp_lookup_func)
  %32 = load %struct.passwd*, %struct.passwd** %7, align 8
  %33 = icmp eq %struct.passwd* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @NS_NOTFOUND, align 4
  br label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @NS_SUCCESS, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  ret i32 %39
}

declare dso_local i32 @TRACE_IN(i32 (i8**, i64*, i8*)*) #1

declare dso_local %struct.passwd* @getpwent(...) #1

declare dso_local i32 @passwd_marshal_func(%struct.passwd*, i8*, i64*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @TRACE_OUT(i32 (i8**, i64*, i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
