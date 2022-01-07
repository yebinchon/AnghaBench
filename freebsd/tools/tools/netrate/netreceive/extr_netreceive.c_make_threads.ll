; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netrate/netreceive/extr_netreceive.c_make_threads.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netrate/netreceive/extr_netreceive.c_make_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.td_desc = type { i32, i32, i32, i8* }

@.str = private unnamed_addr constant [17 x i8] c"td len %d -> %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"no room for pointers!\00", align 1
@rx_body = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"unable to create thread\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.td_desc** (i32*, i32, i32)* @make_threads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.td_desc** @make_threads(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.td_desc**, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = mul nsw i32 %14, %15
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 @round_to(i32 %20, i32 64)
  store i32 %21, i32* %10, align 4
  %22 = call i32 @round_to(i32 24, i32 64)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %9, align 4
  %26 = mul nsw i32 %24, %25
  %27 = add nsw i32 %23, %26
  %28 = call i8* @calloc(i32 1, i32 %27)
  store i8* %28, i8** %12, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 24, i32 %29)
  %31 = load i8*, i8** %12, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = call i32 @perror(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %35 = call i32 @exit(i32 1) #3
  unreachable

36:                                               ; preds = %3
  %37 = load i8*, i8** %12, align 8
  %38 = bitcast i8* %37 to %struct.td_desc**
  store %struct.td_desc** %38, %struct.td_desc*** %13, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i8*, i8** %12, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8* %42, i8** %12, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %109, %36
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %116

47:                                               ; preds = %43
  %48 = load i8*, i8** %12, align 8
  %49 = bitcast i8* %48 to %struct.td_desc*
  %50 = load %struct.td_desc**, %struct.td_desc*** %13, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.td_desc*, %struct.td_desc** %50, i64 %52
  store %struct.td_desc* %49, %struct.td_desc** %53, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.td_desc**, %struct.td_desc*** %13, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.td_desc*, %struct.td_desc** %59, i64 %61
  %63 = load %struct.td_desc*, %struct.td_desc** %62, align 8
  %64 = getelementptr inbounds %struct.td_desc, %struct.td_desc* %63, i32 0, i32 0
  store i32 %58, i32* %64, align 8
  %65 = load %struct.td_desc**, %struct.td_desc*** %13, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.td_desc*, %struct.td_desc** %65, i64 %67
  %69 = load %struct.td_desc*, %struct.td_desc** %68, align 8
  %70 = getelementptr inbounds %struct.td_desc, %struct.td_desc* %69, i32 0, i32 1
  store i32 65536, i32* %70, align 4
  %71 = load %struct.td_desc**, %struct.td_desc*** %13, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.td_desc*, %struct.td_desc** %71, i64 %73
  %75 = load %struct.td_desc*, %struct.td_desc** %74, align 8
  %76 = getelementptr inbounds %struct.td_desc, %struct.td_desc* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @calloc(i32 1, i32 %77)
  %79 = load %struct.td_desc**, %struct.td_desc*** %13, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.td_desc*, %struct.td_desc** %79, i64 %81
  %83 = load %struct.td_desc*, %struct.td_desc** %82, align 8
  %84 = getelementptr inbounds %struct.td_desc, %struct.td_desc* %83, i32 0, i32 3
  store i8* %78, i8** %84, align 8
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %47
  store i32 0, i32* %8, align 4
  br label %90

90:                                               ; preds = %89, %47
  %91 = load %struct.td_desc**, %struct.td_desc*** %13, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.td_desc*, %struct.td_desc** %91, i64 %93
  %95 = load %struct.td_desc*, %struct.td_desc** %94, align 8
  %96 = getelementptr inbounds %struct.td_desc, %struct.td_desc* %95, i32 0, i32 2
  %97 = load i32, i32* @rx_body, align 4
  %98 = load %struct.td_desc**, %struct.td_desc*** %13, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.td_desc*, %struct.td_desc** %98, i64 %100
  %102 = load %struct.td_desc*, %struct.td_desc** %101, align 8
  %103 = call i64 @pthread_create(i32* %96, i32* null, i32 %97, %struct.td_desc* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %90
  %106 = call i32 @perror(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %107 = call i32 @exit(i32 1) #3
  unreachable

108:                                              ; preds = %90
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %11, align 4
  %113 = load i8*, i8** %12, align 8
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  store i8* %115, i8** %12, align 8
  br label %43

116:                                              ; preds = %43
  %117 = load %struct.td_desc**, %struct.td_desc*** %13, align 8
  ret %struct.td_desc** %117
}

declare dso_local i32 @round_to(i32, i32) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, %struct.td_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
