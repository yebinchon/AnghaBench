; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_swrun_tbl.c_kld_file_stat_to_swrun.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_swrun_tbl.c_kld_file_stat_to_swrun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kld_file_stat = type { i32, i32 }
%struct.swrun_entry = type { i32, i32, i64, i8*, i8*, i32, i32*, i32*, i32*, i32* }

@SWR_NAME_MLEN = common dso_local global i64 0, align 8
@oid_zeroDotZero = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@SRT_OPERATING_SYSTEM = common dso_local global i64 0, align 8
@SWOSIndex = common dso_local global i32 0, align 4
@SRT_DEVICE_DRIVER = common dso_local global i64 0, align 8
@SRS_RUNNING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kld_file_stat*, %struct.swrun_entry*)* @kld_file_stat_to_swrun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kld_file_stat_to_swrun(%struct.kld_file_stat* %0, %struct.swrun_entry* %1) #0 {
  %3 = alloca %struct.kld_file_stat*, align 8
  %4 = alloca %struct.swrun_entry*, align 8
  %5 = alloca i64, align 8
  store %struct.kld_file_stat* %0, %struct.kld_file_stat** %3, align 8
  store %struct.swrun_entry* %1, %struct.swrun_entry** %4, align 8
  %6 = load %struct.kld_file_stat*, %struct.kld_file_stat** %3, align 8
  %7 = icmp ne %struct.kld_file_stat* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.swrun_entry*, %struct.swrun_entry** %4, align 8
  %11 = icmp ne %struct.swrun_entry* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.kld_file_stat*, %struct.kld_file_stat** %3, align 8
  %15 = getelementptr inbounds %struct.kld_file_stat, %struct.kld_file_stat* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @strlen(i32 %16)
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @SWR_NAME_MLEN, align 8
  %22 = icmp ugt i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i64, i64* @SWR_NAME_MLEN, align 8
  store i64 %24, i64* %5, align 8
  br label %25

25:                                               ; preds = %23, %2
  %26 = load %struct.swrun_entry*, %struct.swrun_entry** %4, align 8
  %27 = getelementptr inbounds %struct.swrun_entry, %struct.swrun_entry* %26, i32 0, i32 9
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i32* @reallocf(i32* %28, i64 %29)
  %31 = load %struct.swrun_entry*, %struct.swrun_entry** %4, align 8
  %32 = getelementptr inbounds %struct.swrun_entry, %struct.swrun_entry* %31, i32 0, i32 9
  store i32* %30, i32** %32, align 8
  %33 = load %struct.swrun_entry*, %struct.swrun_entry** %4, align 8
  %34 = getelementptr inbounds %struct.swrun_entry, %struct.swrun_entry* %33, i32 0, i32 9
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %25
  %38 = load %struct.swrun_entry*, %struct.swrun_entry** %4, align 8
  %39 = getelementptr inbounds %struct.swrun_entry, %struct.swrun_entry* %38, i32 0, i32 9
  %40 = load i32*, i32** %39, align 8
  %41 = bitcast i32* %40 to i8*
  %42 = load %struct.kld_file_stat*, %struct.kld_file_stat** %3, align 8
  %43 = getelementptr inbounds %struct.kld_file_stat, %struct.kld_file_stat* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @strlcpy(i8* %41, i32 %44, i64 %45)
  br label %47

47:                                               ; preds = %37, %25
  %48 = load %struct.swrun_entry*, %struct.swrun_entry** %4, align 8
  %49 = getelementptr inbounds %struct.swrun_entry, %struct.swrun_entry* %48, i32 0, i32 8
  store i32* null, i32** %49, align 8
  %50 = load %struct.swrun_entry*, %struct.swrun_entry** %4, align 8
  %51 = getelementptr inbounds %struct.swrun_entry, %struct.swrun_entry* %50, i32 0, i32 7
  store i32* null, i32** %51, align 8
  %52 = load %struct.swrun_entry*, %struct.swrun_entry** %4, align 8
  %53 = getelementptr inbounds %struct.swrun_entry, %struct.swrun_entry* %52, i32 0, i32 6
  store i32* @oid_zeroDotZero, i32** %53, align 8
  %54 = load %struct.kld_file_stat*, %struct.kld_file_stat** %3, align 8
  %55 = getelementptr inbounds %struct.kld_file_stat, %struct.kld_file_stat* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @strcmp(i32 %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %47
  %60 = load i64, i64* @SRT_OPERATING_SYSTEM, align 8
  %61 = inttoptr i64 %60 to i8*
  %62 = load %struct.swrun_entry*, %struct.swrun_entry** %4, align 8
  %63 = getelementptr inbounds %struct.swrun_entry, %struct.swrun_entry* %62, i32 0, i32 4
  store i8* %61, i8** %63, align 8
  %64 = load %struct.swrun_entry*, %struct.swrun_entry** %4, align 8
  %65 = getelementptr inbounds %struct.swrun_entry, %struct.swrun_entry* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* @SWOSIndex, align 4
  br label %72

67:                                               ; preds = %47
  %68 = load i64, i64* @SRT_DEVICE_DRIVER, align 8
  %69 = inttoptr i64 %68 to i8*
  %70 = load %struct.swrun_entry*, %struct.swrun_entry** %4, align 8
  %71 = getelementptr inbounds %struct.swrun_entry, %struct.swrun_entry* %70, i32 0, i32 4
  store i8* %69, i8** %71, align 8
  br label %72

72:                                               ; preds = %67, %59
  %73 = load i64, i64* @SRS_RUNNING, align 8
  %74 = inttoptr i64 %73 to i8*
  %75 = load %struct.swrun_entry*, %struct.swrun_entry** %4, align 8
  %76 = getelementptr inbounds %struct.swrun_entry, %struct.swrun_entry* %75, i32 0, i32 3
  store i8* %74, i8** %76, align 8
  %77 = load %struct.swrun_entry*, %struct.swrun_entry** %4, align 8
  %78 = getelementptr inbounds %struct.swrun_entry, %struct.swrun_entry* %77, i32 0, i32 2
  store i64 0, i64* %78, align 8
  %79 = load %struct.kld_file_stat*, %struct.kld_file_stat** %3, align 8
  %80 = getelementptr inbounds %struct.kld_file_stat, %struct.kld_file_stat* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sdiv i32 %81, 1024
  %83 = load %struct.swrun_entry*, %struct.swrun_entry** %4, align 8
  %84 = getelementptr inbounds %struct.swrun_entry, %struct.swrun_entry* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = call i32 (...) @get_ticks()
  %86 = load %struct.swrun_entry*, %struct.swrun_entry** %4, align 8
  %87 = getelementptr inbounds %struct.swrun_entry, %struct.swrun_entry* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32* @reallocf(i32*, i64) #1

declare dso_local i32 @strlcpy(i8*, i32, i64) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @get_ticks(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
