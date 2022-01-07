; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_auth.c_sctp_compute_hashkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_auth.c_sctp_compute_hashkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @sctp_compute_hashkey(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = call i64 @sctp_get_keylen(%struct.TYPE_10__* %11)
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %14 = call i64 @sctp_get_keylen(%struct.TYPE_10__* %13)
  %15 = add nsw i64 %12, %14
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %17 = call i64 @sctp_get_keylen(%struct.TYPE_10__* %16)
  %18 = add nsw i64 %15, %17
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %3
  %22 = load i64, i64* %8, align 8
  %23 = call %struct.TYPE_10__* @sctp_alloc_key(i64 %22)
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %9, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %25 = icmp eq %struct.TYPE_10__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %142

27:                                               ; preds = %21
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %10, align 8
  br label %35

34:                                               ; preds = %3
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %142

35:                                               ; preds = %27
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %38 = call i64 @sctp_compare_key(%struct.TYPE_10__* %36, %struct.TYPE_10__* %37)
  %39 = icmp sle i64 %38, 0
  br i1 %39, label %40, label %90

40:                                               ; preds = %35
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %42 = call i64 @sctp_get_keylen(%struct.TYPE_10__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %40
  %45 = load i32*, i32** %10, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @memcpy(i32* %45, i32* %48, i64 %51)
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 %55
  store i32* %57, i32** %10, align 8
  br label %58

58:                                               ; preds = %44, %40
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %60 = call i64 @sctp_get_keylen(%struct.TYPE_10__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %58
  %63 = load i32*, i32** %10, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @memcpy(i32* %63, i32* %66, i64 %69)
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 %73
  store i32* %75, i32** %10, align 8
  br label %76

76:                                               ; preds = %62, %58
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %78 = call i64 @sctp_get_keylen(%struct.TYPE_10__* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %76
  %81 = load i32*, i32** %10, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @memcpy(i32* %81, i32* %84, i64 %87)
  br label %89

89:                                               ; preds = %80, %76
  br label %140

90:                                               ; preds = %35
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %92 = call i64 @sctp_get_keylen(%struct.TYPE_10__* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %90
  %95 = load i32*, i32** %10, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @memcpy(i32* %95, i32* %98, i64 %101)
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i32*, i32** %10, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 %105
  store i32* %107, i32** %10, align 8
  br label %108

108:                                              ; preds = %94, %90
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %110 = call i64 @sctp_get_keylen(%struct.TYPE_10__* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %126

112:                                              ; preds = %108
  %113 = load i32*, i32** %10, align 8
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @memcpy(i32* %113, i32* %116, i64 %119)
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i32*, i32** %10, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 %123
  store i32* %125, i32** %10, align 8
  br label %126

126:                                              ; preds = %112, %108
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %128 = call i64 @sctp_get_keylen(%struct.TYPE_10__* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %126
  %131 = load i32*, i32** %10, align 8
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @memcpy(i32* %131, i32* %134, i64 %137)
  br label %139

139:                                              ; preds = %130, %126
  br label %140

140:                                              ; preds = %139, %89
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %141, %struct.TYPE_10__** %4, align 8
  br label %142

142:                                              ; preds = %140, %34, %26
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  ret %struct.TYPE_10__* %143
}

declare dso_local i64 @sctp_get_keylen(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @sctp_alloc_key(i64) #1

declare dso_local i64 @sctp_compare_key(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
