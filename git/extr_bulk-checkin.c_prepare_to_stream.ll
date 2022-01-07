; ModuleID = '/home/carl/AnghaBench/git/extr_bulk-checkin.c_prepare_to_stream.c'
source_filename = "/home/carl/AnghaBench/git/extr_bulk-checkin.c_prepare_to_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bulk_checkin_state = type { i32, i64, i32, i32 }

@HASH_WRITE_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"unable to write pack header\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bulk_checkin_state*, i32)* @prepare_to_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_to_stream(%struct.bulk_checkin_state* %0, i32 %1) #0 {
  %3 = alloca %struct.bulk_checkin_state*, align 8
  %4 = alloca i32, align 4
  store %struct.bulk_checkin_state* %0, %struct.bulk_checkin_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @HASH_WRITE_OBJECT, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.bulk_checkin_state*, %struct.bulk_checkin_state** %3, align 8
  %11 = getelementptr inbounds %struct.bulk_checkin_state, %struct.bulk_checkin_state* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %2
  br label %36

15:                                               ; preds = %9
  %16 = load %struct.bulk_checkin_state*, %struct.bulk_checkin_state** %3, align 8
  %17 = getelementptr inbounds %struct.bulk_checkin_state, %struct.bulk_checkin_state* %16, i32 0, i32 3
  %18 = call i64 @create_tmp_packfile(i32* %17)
  %19 = load %struct.bulk_checkin_state*, %struct.bulk_checkin_state** %3, align 8
  %20 = getelementptr inbounds %struct.bulk_checkin_state, %struct.bulk_checkin_state* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  %21 = load %struct.bulk_checkin_state*, %struct.bulk_checkin_state** %3, align 8
  %22 = getelementptr inbounds %struct.bulk_checkin_state, %struct.bulk_checkin_state* %21, i32 0, i32 2
  %23 = call i32 @reset_pack_idx_option(i32* %22)
  %24 = load %struct.bulk_checkin_state*, %struct.bulk_checkin_state** %3, align 8
  %25 = getelementptr inbounds %struct.bulk_checkin_state, %struct.bulk_checkin_state* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @write_pack_header(i64 %26, i32 1)
  %28 = load %struct.bulk_checkin_state*, %struct.bulk_checkin_state** %3, align 8
  %29 = getelementptr inbounds %struct.bulk_checkin_state, %struct.bulk_checkin_state* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.bulk_checkin_state*, %struct.bulk_checkin_state** %3, align 8
  %31 = getelementptr inbounds %struct.bulk_checkin_state, %struct.bulk_checkin_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %15
  %35 = call i32 @die_errno(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %14, %34, %15
  ret void
}

declare dso_local i64 @create_tmp_packfile(i32*) #1

declare dso_local i32 @reset_pack_idx_option(i32*) #1

declare dso_local i32 @write_pack_header(i64, i32) #1

declare dso_local i32 @die_errno(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
