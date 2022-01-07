; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_arg.c_audit_arg_sockaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_arg.c_audit_arg_sockaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.sockaddr = type { i32, i32 }
%struct.kaudit_record = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_un = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"audit_arg_sockaddr: td == NULL\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"audit_arg_sockaddr: sa == NULL\00", align 1
@ARG_SADDRINET = common dso_local global i32 0, align 4
@ARG_SADDRINET6 = common dso_local global i32 0, align 4
@AT_FDCWD = common dso_local global i32 0, align 4
@ARG_SADDRUNIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audit_arg_sockaddr(%struct.thread* %0, i32 %1, %struct.sockaddr* %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.kaudit_record*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sockaddr* %2, %struct.sockaddr** %6, align 8
  %8 = load %struct.thread*, %struct.thread** %4, align 8
  %9 = icmp ne %struct.thread* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @KASSERT(i32 %10, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %13 = icmp ne %struct.sockaddr* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %16 = call %struct.kaudit_record* (...) @currecord()
  store %struct.kaudit_record* %16, %struct.kaudit_record** %7, align 8
  %17 = load %struct.kaudit_record*, %struct.kaudit_record** %7, align 8
  %18 = icmp eq %struct.kaudit_record* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %58

20:                                               ; preds = %3
  %21 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %22 = load %struct.kaudit_record*, %struct.kaudit_record** %7, align 8
  %23 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %26 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @bcopy(%struct.sockaddr* %21, i32* %24, i32 %27)
  %29 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %30 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %58 [
    i32 130, label %32
    i32 129, label %36
    i32 128, label %40
  ]

32:                                               ; preds = %20
  %33 = load %struct.kaudit_record*, %struct.kaudit_record** %7, align 8
  %34 = load i32, i32* @ARG_SADDRINET, align 4
  %35 = call i32 @ARG_SET_VALID(%struct.kaudit_record* %33, i32 %34)
  br label %58

36:                                               ; preds = %20
  %37 = load %struct.kaudit_record*, %struct.kaudit_record** %7, align 8
  %38 = load i32, i32* @ARG_SADDRINET6, align 4
  %39 = call i32 @ARG_SET_VALID(%struct.kaudit_record* %37, i32 %38)
  br label %58

40:                                               ; preds = %20
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @AT_FDCWD, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @audit_arg_atfd1(i32 %45)
  br label %47

47:                                               ; preds = %44, %40
  %48 = load %struct.thread*, %struct.thread** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %51 = bitcast %struct.sockaddr* %50 to %struct.sockaddr_un*
  %52 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @audit_arg_upath1(%struct.thread* %48, i32 %49, i32 %53)
  %55 = load %struct.kaudit_record*, %struct.kaudit_record** %7, align 8
  %56 = load i32, i32* @ARG_SADDRUNIX, align 4
  %57 = call i32 @ARG_SET_VALID(%struct.kaudit_record* %55, i32 %56)
  br label %58

58:                                               ; preds = %19, %20, %47, %36, %32
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.kaudit_record* @currecord(...) #1

declare dso_local i32 @bcopy(%struct.sockaddr*, i32*, i32) #1

declare dso_local i32 @ARG_SET_VALID(%struct.kaudit_record*, i32) #1

declare dso_local i32 @audit_arg_atfd1(i32) #1

declare dso_local i32 @audit_arg_upath1(%struct.thread*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
