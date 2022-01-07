; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_login.c_login_send_chap_success.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_login.c_login_send_chap_success.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdu = type { i32 }
%struct.auth = type { i8*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.keys = type { i32 }
%struct.rchap = type { i32 }

@BHSLR_STAGE_OPERATIONAL_NEGOTIATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"CHAP_I\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"CHAP_C\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"initiator requested target authentication, but didn't send CHAP_I\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"initiator requested target authentication, but didn't send CHAP_C\00", align 1
@AG_TYPE_CHAP_MUTUAL = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [90 x i8] c"initiator requests target authentication for user \22%s\22, but mutual user/secret is not set\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"performing mutual authentication as user \22%s\22\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"received CHAP Login PDU with malformed CHAP_I or CHAP_C\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"CHAP_N\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"CHAP_R\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"initiator did not request target authentication\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pdu*, %struct.auth*)* @login_send_chap_success to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @login_send_chap_success(%struct.pdu* %0, %struct.auth* %1) #0 {
  %3 = alloca %struct.pdu*, align 8
  %4 = alloca %struct.auth*, align 8
  %5 = alloca %struct.pdu*, align 8
  %6 = alloca %struct.keys*, align 8
  %7 = alloca %struct.keys*, align 8
  %8 = alloca %struct.rchap*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.pdu* %0, %struct.pdu** %3, align 8
  store %struct.auth* %1, %struct.auth** %4, align 8
  %13 = load %struct.pdu*, %struct.pdu** %3, align 8
  %14 = call %struct.pdu* @login_new_response(%struct.pdu* %13)
  store %struct.pdu* %14, %struct.pdu** %5, align 8
  %15 = load %struct.pdu*, %struct.pdu** %5, align 8
  %16 = load i32, i32* @BHSLR_STAGE_OPERATIONAL_NEGOTIATION, align 4
  %17 = call i32 @login_set_nsg(%struct.pdu* %15, i32 %16)
  %18 = call %struct.keys* (...) @keys_new()
  store %struct.keys* %18, %struct.keys** %6, align 8
  %19 = load %struct.keys*, %struct.keys** %6, align 8
  %20 = load %struct.pdu*, %struct.pdu** %3, align 8
  %21 = call i32 @keys_load(%struct.keys* %19, %struct.pdu* %20)
  %22 = load %struct.keys*, %struct.keys** %6, align 8
  %23 = call i8* @keys_find(%struct.keys* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %23, i8** %9, align 8
  %24 = load %struct.keys*, %struct.keys** %6, align 8
  %25 = call i8* @keys_find(%struct.keys* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i8* %25, i8** %10, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i8*, i8** %10, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %100

31:                                               ; preds = %28, %2
  %32 = load i8*, i8** %9, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load %struct.pdu*, %struct.pdu** %3, align 8
  %36 = call i32 @login_send_error(%struct.pdu* %35, i32 2, i32 7)
  %37 = call i32 (i32, i8*, ...) @log_errx(i32 1, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %34, %31
  %39 = load i8*, i8** %10, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load %struct.pdu*, %struct.pdu** %3, align 8
  %43 = call i32 @login_send_error(%struct.pdu* %42, i32 2, i32 7)
  %44 = call i32 (i32, i8*, ...) @log_errx(i32 1, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0))
  br label %45

45:                                               ; preds = %41, %38
  %46 = load %struct.auth*, %struct.auth** %4, align 8
  %47 = getelementptr inbounds %struct.auth, %struct.auth* %46, i32 0, i32 3
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AG_TYPE_CHAP_MUTUAL, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %45
  %54 = load %struct.pdu*, %struct.pdu** %3, align 8
  %55 = call i32 @login_send_error(%struct.pdu* %54, i32 2, i32 1)
  %56 = load %struct.auth*, %struct.auth** %4, align 8
  %57 = getelementptr inbounds %struct.auth, %struct.auth* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32, i8*, ...) @log_errx(i32 1, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.4, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %53, %45
  %61 = load %struct.auth*, %struct.auth** %4, align 8
  %62 = getelementptr inbounds %struct.auth, %struct.auth* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8* %63)
  %65 = load %struct.auth*, %struct.auth** %4, align 8
  %66 = getelementptr inbounds %struct.auth, %struct.auth* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call %struct.rchap* @rchap_new(i32 %67)
  store %struct.rchap* %68, %struct.rchap** %8, align 8
  %69 = load %struct.rchap*, %struct.rchap** %8, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = call i32 @rchap_receive(%struct.rchap* %69, i8* %70, i8* %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %60
  %76 = load %struct.pdu*, %struct.pdu** %3, align 8
  %77 = call i32 @login_send_error(%struct.pdu* %76, i32 2, i32 7)
  %78 = call i32 (i32, i8*, ...) @log_errx(i32 1, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0))
  br label %79

79:                                               ; preds = %75, %60
  %80 = load %struct.rchap*, %struct.rchap** %8, align 8
  %81 = call i8* @rchap_get_response(%struct.rchap* %80)
  store i8* %81, i8** %11, align 8
  %82 = load %struct.rchap*, %struct.rchap** %8, align 8
  %83 = call i32 @rchap_delete(%struct.rchap* %82)
  %84 = call %struct.keys* (...) @keys_new()
  store %struct.keys* %84, %struct.keys** %7, align 8
  %85 = load %struct.keys*, %struct.keys** %7, align 8
  %86 = load %struct.auth*, %struct.auth** %4, align 8
  %87 = getelementptr inbounds %struct.auth, %struct.auth* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @keys_add(%struct.keys* %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %88)
  %90 = load %struct.keys*, %struct.keys** %7, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = call i32 @keys_add(%struct.keys* %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %91)
  %93 = load i8*, i8** %11, align 8
  %94 = call i32 @free(i8* %93)
  %95 = load %struct.keys*, %struct.keys** %7, align 8
  %96 = load %struct.pdu*, %struct.pdu** %5, align 8
  %97 = call i32 @keys_save(%struct.keys* %95, %struct.pdu* %96)
  %98 = load %struct.keys*, %struct.keys** %7, align 8
  %99 = call i32 @keys_delete(%struct.keys* %98)
  br label %102

100:                                              ; preds = %28
  %101 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %79
  %103 = load %struct.keys*, %struct.keys** %6, align 8
  %104 = call i32 @keys_delete(%struct.keys* %103)
  %105 = load %struct.pdu*, %struct.pdu** %5, align 8
  %106 = call i32 @pdu_send(%struct.pdu* %105)
  %107 = load %struct.pdu*, %struct.pdu** %5, align 8
  %108 = call i32 @pdu_delete(%struct.pdu* %107)
  ret void
}

declare dso_local %struct.pdu* @login_new_response(%struct.pdu*) #1

declare dso_local i32 @login_set_nsg(%struct.pdu*, i32) #1

declare dso_local %struct.keys* @keys_new(...) #1

declare dso_local i32 @keys_load(%struct.keys*, %struct.pdu*) #1

declare dso_local i8* @keys_find(%struct.keys*, i8*) #1

declare dso_local i32 @login_send_error(%struct.pdu*, i32, i32) #1

declare dso_local i32 @log_errx(i32, i8*, ...) #1

declare dso_local i32 @log_debugx(i8*, ...) #1

declare dso_local %struct.rchap* @rchap_new(i32) #1

declare dso_local i32 @rchap_receive(%struct.rchap*, i8*, i8*) #1

declare dso_local i8* @rchap_get_response(%struct.rchap*) #1

declare dso_local i32 @rchap_delete(%struct.rchap*) #1

declare dso_local i32 @keys_add(%struct.keys*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @keys_save(%struct.keys*, %struct.pdu*) #1

declare dso_local i32 @keys_delete(%struct.keys*) #1

declare dso_local i32 @pdu_send(%struct.pdu*) #1

declare dso_local i32 @pdu_delete(%struct.pdu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
