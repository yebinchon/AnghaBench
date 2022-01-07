; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_tlv.c_bhnd_nvram_tlv_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_tlv.c_bhnd_nvram_tlv_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_data = type { i32 }
%struct.bhnd_nvram_tlv = type { i32 }
%struct.bhnd_nvram_tlv_env = type { i8* }

@.str = private unnamed_addr constant [32 x i8] c"invalid cookiep; record missing\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.bhnd_nvram_data*, i8**)* @bhnd_nvram_tlv_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bhnd_nvram_tlv_next(%struct.bhnd_nvram_data* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bhnd_nvram_data*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.bhnd_nvram_tlv*, align 8
  %7 = alloca %struct.bhnd_nvram_tlv_env*, align 8
  %8 = alloca i64, align 8
  store %struct.bhnd_nvram_data* %0, %struct.bhnd_nvram_data** %4, align 8
  store i8** %1, i8*** %5, align 8
  %9 = load %struct.bhnd_nvram_data*, %struct.bhnd_nvram_data** %4, align 8
  %10 = bitcast %struct.bhnd_nvram_data* %9 to %struct.bhnd_nvram_tlv*
  store %struct.bhnd_nvram_tlv* %10, %struct.bhnd_nvram_tlv** %6, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  store i64 0, i64* %8, align 8
  %15 = load %struct.bhnd_nvram_tlv*, %struct.bhnd_nvram_tlv** %6, align 8
  %16 = load i8**, i8*** %5, align 8
  %17 = call %struct.bhnd_nvram_tlv_env* @bhnd_nvram_tlv_next_env(%struct.bhnd_nvram_tlv* %15, i64* %8, i8** %16)
  store %struct.bhnd_nvram_tlv_env* %17, %struct.bhnd_nvram_tlv_env** %7, align 8
  br label %33

18:                                               ; preds = %2
  %19 = load %struct.bhnd_nvram_tlv*, %struct.bhnd_nvram_tlv** %6, align 8
  %20 = load i8**, i8*** %5, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @bhnd_nvram_tlv_to_offset(%struct.bhnd_nvram_tlv* %19, i8* %21)
  store i64 %22, i64* %8, align 8
  %23 = load %struct.bhnd_nvram_tlv*, %struct.bhnd_nvram_tlv** %6, align 8
  %24 = call %struct.bhnd_nvram_tlv_env* @bhnd_nvram_tlv_next_env(%struct.bhnd_nvram_tlv* %23, i64* %8, i8** null)
  store %struct.bhnd_nvram_tlv_env* %24, %struct.bhnd_nvram_tlv_env** %7, align 8
  %25 = load %struct.bhnd_nvram_tlv_env*, %struct.bhnd_nvram_tlv_env** %7, align 8
  %26 = icmp eq %struct.bhnd_nvram_tlv_env* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = call i32 @BHND_NV_PANIC(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %18
  %30 = load %struct.bhnd_nvram_tlv*, %struct.bhnd_nvram_tlv** %6, align 8
  %31 = load i8**, i8*** %5, align 8
  %32 = call %struct.bhnd_nvram_tlv_env* @bhnd_nvram_tlv_next_env(%struct.bhnd_nvram_tlv* %30, i64* %8, i8** %31)
  store %struct.bhnd_nvram_tlv_env* %32, %struct.bhnd_nvram_tlv_env** %7, align 8
  br label %33

33:                                               ; preds = %29, %14
  %34 = load %struct.bhnd_nvram_tlv_env*, %struct.bhnd_nvram_tlv_env** %7, align 8
  %35 = icmp eq %struct.bhnd_nvram_tlv_env* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i8* null, i8** %3, align 8
  br label %41

37:                                               ; preds = %33
  %38 = load %struct.bhnd_nvram_tlv_env*, %struct.bhnd_nvram_tlv_env** %7, align 8
  %39 = getelementptr inbounds %struct.bhnd_nvram_tlv_env, %struct.bhnd_nvram_tlv_env* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %3, align 8
  br label %41

41:                                               ; preds = %37, %36
  %42 = load i8*, i8** %3, align 8
  ret i8* %42
}

declare dso_local %struct.bhnd_nvram_tlv_env* @bhnd_nvram_tlv_next_env(%struct.bhnd_nvram_tlv*, i64*, i8**) #1

declare dso_local i64 @bhnd_nvram_tlv_to_offset(%struct.bhnd_nvram_tlv*, i8*) #1

declare dso_local i32 @BHND_NV_PANIC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
