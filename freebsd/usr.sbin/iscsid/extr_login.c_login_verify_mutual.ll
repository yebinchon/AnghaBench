; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/iscsid/extr_login.c_login_verify_mutual.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/iscsid/extr_login.c_login_verify_mutual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdu = type { %struct.connection* }
%struct.connection = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.keys = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"CHAP_N\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"received CHAP Response PDU without CHAP_N\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"CHAP_R\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"received CHAP Response PDU without CHAP_R\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"received CHAP Response PDU with invalid CHAP_R\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Mutual CHAP failed\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"mutual CHAP authentication failed: wrong user\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"mutual CHAP authentication failed: wrong secret\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"mutual CHAP authentication succeeded\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pdu*)* @login_verify_mutual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @login_verify_mutual(%struct.pdu* %0) #0 {
  %2 = alloca %struct.pdu*, align 8
  %3 = alloca %struct.connection*, align 8
  %4 = alloca %struct.keys*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.pdu* %0, %struct.pdu** %2, align 8
  %8 = load %struct.pdu*, %struct.pdu** %2, align 8
  %9 = getelementptr inbounds %struct.pdu, %struct.pdu* %8, i32 0, i32 0
  %10 = load %struct.connection*, %struct.connection** %9, align 8
  store %struct.connection* %10, %struct.connection** %3, align 8
  %11 = call %struct.keys* (...) @keys_new()
  store %struct.keys* %11, %struct.keys** %4, align 8
  %12 = load %struct.keys*, %struct.keys** %4, align 8
  %13 = load %struct.pdu*, %struct.pdu** %2, align 8
  %14 = call i32 @keys_load(%struct.keys* %12, %struct.pdu* %13)
  %15 = load %struct.keys*, %struct.keys** %4, align 8
  %16 = call i8* @keys_find(%struct.keys* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %1
  %22 = load %struct.keys*, %struct.keys** %4, align 8
  %23 = call i8* @keys_find(%struct.keys* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %21
  %29 = load %struct.connection*, %struct.connection** %3, align 8
  %30 = getelementptr inbounds %struct.connection, %struct.connection* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @chap_receive(i32* %31, i8* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %28
  %39 = load i8*, i8** %5, align 8
  %40 = load %struct.connection*, %struct.connection** %3, align 8
  %41 = getelementptr inbounds %struct.connection, %struct.connection* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @strcmp(i8* %39, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load %struct.connection*, %struct.connection** %3, align 8
  %48 = call i32 @fail(%struct.connection* %47, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %49 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  br label %50

50:                                               ; preds = %46, %38
  %51 = load %struct.connection*, %struct.connection** %3, align 8
  %52 = getelementptr inbounds %struct.connection, %struct.connection* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.connection*, %struct.connection** %3, align 8
  %55 = getelementptr inbounds %struct.connection, %struct.connection* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @chap_authenticate(i32* %53, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %50
  %62 = load %struct.connection*, %struct.connection** %3, align 8
  %63 = call i32 @fail(%struct.connection* %62, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %64 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  br label %65

65:                                               ; preds = %61, %50
  %66 = load %struct.keys*, %struct.keys** %4, align 8
  %67 = call i32 @keys_delete(%struct.keys* %66)
  %68 = load %struct.connection*, %struct.connection** %3, align 8
  %69 = getelementptr inbounds %struct.connection, %struct.connection* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @chap_delete(i32* %70)
  %72 = load %struct.connection*, %struct.connection** %3, align 8
  %73 = getelementptr inbounds %struct.connection, %struct.connection* %72, i32 0, i32 0
  store i32* null, i32** %73, align 8
  %74 = call i32 @log_debugx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local %struct.keys* @keys_new(...) #1

declare dso_local i32 @keys_load(%struct.keys*, %struct.pdu*) #1

declare dso_local i8* @keys_find(%struct.keys*, i8*) #1

declare dso_local i32 @log_errx(i32, i8*) #1

declare dso_local i32 @chap_receive(i32*, i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @fail(%struct.connection*, i8*) #1

declare dso_local i32 @chap_authenticate(i32*, i32) #1

declare dso_local i32 @keys_delete(%struct.keys*) #1

declare dso_local i32 @chap_delete(i32*) #1

declare dso_local i32 @log_debugx(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
