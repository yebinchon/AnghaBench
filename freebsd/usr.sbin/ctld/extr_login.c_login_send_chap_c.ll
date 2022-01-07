; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_login.c_login_send_chap_c.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_login.c_login_send_chap_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdu = type { i32 }
%struct.chap = type { i32 }
%struct.keys = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"CHAP_A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"CHAP_I\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"CHAP_C\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pdu*, %struct.chap*)* @login_send_chap_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @login_send_chap_c(%struct.pdu* %0, %struct.chap* %1) #0 {
  %3 = alloca %struct.pdu*, align 8
  %4 = alloca %struct.chap*, align 8
  %5 = alloca %struct.pdu*, align 8
  %6 = alloca %struct.keys*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.pdu* %0, %struct.pdu** %3, align 8
  store %struct.chap* %1, %struct.chap** %4, align 8
  %9 = load %struct.chap*, %struct.chap** %4, align 8
  %10 = call i8* @chap_get_challenge(%struct.chap* %9)
  store i8* %10, i8** %7, align 8
  %11 = load %struct.chap*, %struct.chap** %4, align 8
  %12 = call i8* @chap_get_id(%struct.chap* %11)
  store i8* %12, i8** %8, align 8
  %13 = load %struct.pdu*, %struct.pdu** %3, align 8
  %14 = call %struct.pdu* @login_new_response(%struct.pdu* %13)
  store %struct.pdu* %14, %struct.pdu** %5, align 8
  %15 = call %struct.keys* (...) @keys_new()
  store %struct.keys* %15, %struct.keys** %6, align 8
  %16 = load %struct.keys*, %struct.keys** %6, align 8
  %17 = call i32 @keys_add(%struct.keys* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.keys*, %struct.keys** %6, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @keys_add(%struct.keys* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %19)
  %21 = load %struct.keys*, %struct.keys** %6, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @keys_add(%struct.keys* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %22)
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @free(i8* %24)
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @free(i8* %26)
  %28 = load %struct.keys*, %struct.keys** %6, align 8
  %29 = load %struct.pdu*, %struct.pdu** %5, align 8
  %30 = call i32 @keys_save(%struct.keys* %28, %struct.pdu* %29)
  %31 = load %struct.pdu*, %struct.pdu** %5, align 8
  %32 = call i32 @pdu_send(%struct.pdu* %31)
  %33 = load %struct.pdu*, %struct.pdu** %5, align 8
  %34 = call i32 @pdu_delete(%struct.pdu* %33)
  %35 = load %struct.keys*, %struct.keys** %6, align 8
  %36 = call i32 @keys_delete(%struct.keys* %35)
  ret void
}

declare dso_local i8* @chap_get_challenge(%struct.chap*) #1

declare dso_local i8* @chap_get_id(%struct.chap*) #1

declare dso_local %struct.pdu* @login_new_response(%struct.pdu*) #1

declare dso_local %struct.keys* @keys_new(...) #1

declare dso_local i32 @keys_add(%struct.keys*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @keys_save(%struct.keys*, %struct.pdu*) #1

declare dso_local i32 @pdu_send(%struct.pdu*) #1

declare dso_local i32 @pdu_delete(%struct.pdu*) #1

declare dso_local i32 @keys_delete(%struct.keys*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
