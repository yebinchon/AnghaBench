; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netrate/netreceive/extr_netreceive.c_main_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netrate/netreceive/extr_netreceive.c_main_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.td_desc = type { i32, i32 }
%struct.timespec = type { i32, i32 }

@CLOCK_REALTIME = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"start at %ld.%09ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"poll\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c" %9ld pps %8.3f Mbps\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c" - %d pkts in %ld.%09ld ns\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.td_desc**, i32, i32)* @main_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @main_thread(%struct.td_desc** %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.td_desc**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.timespec, align 4
  %12 = alloca %struct.timespec, align 4
  %13 = alloca %struct.timespec, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.td_desc** %0, %struct.td_desc*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  %19 = load i32, i32* @CLOCK_REALTIME, align 4
  %20 = call i32 @clock_gettime(i32 %19, %struct.timespec* %12)
  %21 = load i32, i32* @stderr, align 4
  %22 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %25)
  br label %27

27:                                               ; preds = %3, %62
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = mul nsw i32 %28, %29
  store i32 %30, i32* %15, align 4
  %31 = call i64 @poll(i32* null, i32 0, i32 500)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %27
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %14, align 4
  br label %36

36:                                               ; preds = %59, %35
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %62

40:                                               ; preds = %36
  %41 = load %struct.td_desc**, %struct.td_desc*** %4, align 8
  %42 = load i32, i32* %14, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.td_desc*, %struct.td_desc** %41, i64 %43
  %45 = load %struct.td_desc*, %struct.td_desc** %44, align 8
  %46 = getelementptr inbounds %struct.td_desc, %struct.td_desc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %7, align 4
  %50 = load %struct.td_desc**, %struct.td_desc*** %4, align 8
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.td_desc*, %struct.td_desc** %50, i64 %52
  %54 = load %struct.td_desc*, %struct.td_desc** %53, align 8
  %55 = getelementptr inbounds %struct.td_desc, %struct.td_desc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %40
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %14, align 4
  br label %36

62:                                               ; preds = %36
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = sub nsw i32 %63, %64
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* @CLOCK_REALTIME, align 4
  %67 = call i32 @clock_gettime(i32 %66, %struct.timespec* %11)
  %68 = bitcast %struct.timespec* %13 to i8*
  %69 = bitcast %struct.timespec* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %68, i8* align 4 %69, i64 8, i1 false)
  %70 = call i32 @timespec_sub(%struct.timespec* %13, %struct.timespec* %12)
  %71 = bitcast %struct.timespec* %12 to i8*
  %72 = bitcast %struct.timespec* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %71, i8* align 4 %72, i64 8, i1 false)
  %73 = load i32, i32* %16, align 4
  store i32 %73, i32* %17, align 4
  %74 = load i32, i32* %17, align 4
  %75 = mul nsw i32 %74, 1000000000
  %76 = getelementptr inbounds %struct.timespec, %struct.timespec* %13, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %77, 1000000000
  %79 = getelementptr inbounds %struct.timespec, %struct.timespec* %13, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %78, %80
  %82 = add nsw i32 %81, 1
  %83 = sdiv i32 %75, %82
  store i32 %83, i32* %17, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %10, align 4
  %86 = sub nsw i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = mul nsw i64 %87, 8000000000
  %89 = getelementptr inbounds %struct.timespec, %struct.timespec* %13, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 %90, 1000000000
  %92 = getelementptr inbounds %struct.timespec, %struct.timespec* %13, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %91, %93
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = sdiv i64 %88, %96
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %18, align 4
  %99 = load i32, i32* @stderr, align 4
  %100 = load i32, i32* %17, align 4
  %101 = sext i32 %100 to i64
  %102 = trunc i64 %101 to i32
  %103 = load i32, i32* %18, align 4
  %104 = sitofp i32 %103 to double
  %105 = fmul double 0x3EB0C6F7A0B5ED8D, %104
  %106 = fptosi double %105 to i32
  %107 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %102, i32 %106)
  %108 = load i32, i32* @stderr, align 4
  %109 = load i32, i32* %16, align 4
  %110 = getelementptr inbounds %struct.timespec, %struct.timespec* %13, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.timespec, %struct.timespec* %13, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %108, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %109, i32 %111, i32 %113)
  %115 = load i32, i32* %7, align 4
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %9, align 4
  store i32 %116, i32* %10, align 4
  br label %27
}

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, ...) #1

declare dso_local i64 @poll(i32*, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @timespec_sub(%struct.timespec*, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
