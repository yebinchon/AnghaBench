; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_scalars.c_OS_checkSystemDateInput.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_scalars.c_OS_checkSystemDateInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.timeval* (i32*, i32)* @OS_checkSystemDateInput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.timeval* @OS_checkSystemDateInput(i32* %0, i32 %1) #0 {
  %3 = alloca %struct.timeval*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tm, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.timeval*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 8
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 11
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store %struct.timeval* null, %struct.timeval** %3, align 8
  br label %151

15:                                               ; preds = %11, %2
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 2
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %55, label %20

20:                                               ; preds = %15
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %23, 12
  br i1 %24, label %55, label %25

25:                                               ; preds = %20
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 3
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %55, label %30

30:                                               ; preds = %25
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %33, 31
  br i1 %34, label %55, label %35

35:                                               ; preds = %30
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 4
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %38, 23
  br i1 %39, label %55, label %40

40:                                               ; preds = %35
  %41 = load i32*, i32** %4, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 5
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %43, 59
  br i1 %44, label %55, label %45

45:                                               ; preds = %40
  %46 = load i32*, i32** %4, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 6
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %48, 60
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load i32*, i32** %4, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 7
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %53, 9
  br i1 %54, label %55, label %56

55:                                               ; preds = %50, %45, %40, %35, %30, %25, %20, %15
  store %struct.timeval* null, %struct.timeval** %3, align 8
  br label %151

56:                                               ; preds = %50
  %57 = load i32*, i32** %4, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 8
  %61 = load i32*, i32** %4, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %60, %63
  %65 = sub nsw i32 %64, 1900
  %66 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 0
  store i32 %65, i32* %66, align 8
  %67 = load i32*, i32** %4, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %69, 1
  %71 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 1
  store i32 %70, i32* %71, align 4
  %72 = load i32*, i32** %4, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 3
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 2
  store i32 %74, i32* %75, align 8
  %76 = load i32*, i32** %4, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 4
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 3
  store i32 %78, i32* %79, align 4
  %80 = load i32*, i32** %4, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 5
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 4
  store i32 %82, i32* %83, align 8
  %84 = load i32*, i32** %4, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 6
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 5
  store i32 %86, i32* %87, align 4
  %88 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 6
  store i64 0, i64* %88, align 8
  %89 = call i32 @timegm(%struct.tm* %6)
  store i32 %89, i32* %7, align 4
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %91, label %92

91:                                               ; preds = %56
  store %struct.timeval* null, %struct.timeval** %3, align 8
  br label %151

92:                                               ; preds = %56
  %93 = load i32, i32* %5, align 4
  %94 = icmp eq i32 %93, 11
  br i1 %94, label %95, label %136

95:                                               ; preds = %92
  %96 = load i32*, i32** %4, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 9
  %98 = load i32, i32* %97, align 4
  %99 = icmp sgt i32 %98, 13
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = load i32*, i32** %4, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 10
  %103 = load i32, i32* %102, align 4
  %104 = icmp sgt i32 %103, 59
  br i1 %104, label %105, label %106

105:                                              ; preds = %100, %95
  store %struct.timeval* null, %struct.timeval** %3, align 8
  br label %151

106:                                              ; preds = %100
  %107 = load i32*, i32** %4, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 8
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 43
  br i1 %110, label %111, label %123

111:                                              ; preds = %106
  %112 = load i32*, i32** %4, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 9
  %114 = load i32, i32* %113, align 4
  %115 = mul nsw i32 3600, %114
  %116 = load i32*, i32** %4, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 10
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 60, %118
  %120 = add nsw i32 %115, %119
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* %7, align 4
  br label %135

123:                                              ; preds = %106
  %124 = load i32*, i32** %4, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 9
  %126 = load i32, i32* %125, align 4
  %127 = mul nsw i32 3600, %126
  %128 = load i32*, i32** %4, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 10
  %130 = load i32, i32* %129, align 4
  %131 = mul nsw i32 60, %130
  %132 = add nsw i32 %127, %131
  %133 = load i32, i32* %7, align 4
  %134 = sub nsw i32 %133, %132
  store i32 %134, i32* %7, align 4
  br label %135

135:                                              ; preds = %123, %111
  br label %136

136:                                              ; preds = %135, %92
  %137 = call %struct.timeval* @malloc(i32 8)
  store %struct.timeval* %137, %struct.timeval** %8, align 8
  %138 = icmp eq %struct.timeval* %137, null
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  store %struct.timeval* null, %struct.timeval** %3, align 8
  br label %151

140:                                              ; preds = %136
  %141 = load i32, i32* %7, align 4
  %142 = load %struct.timeval*, %struct.timeval** %8, align 8
  %143 = getelementptr inbounds %struct.timeval, %struct.timeval* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 4
  %144 = load i32*, i32** %4, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 7
  %146 = load i32, i32* %145, align 4
  %147 = mul nsw i32 %146, 100000
  %148 = load %struct.timeval*, %struct.timeval** %8, align 8
  %149 = getelementptr inbounds %struct.timeval, %struct.timeval* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  %150 = load %struct.timeval*, %struct.timeval** %8, align 8
  store %struct.timeval* %150, %struct.timeval** %3, align 8
  br label %151

151:                                              ; preds = %140, %139, %105, %91, %55, %14
  %152 = load %struct.timeval*, %struct.timeval** %3, align 8
  ret %struct.timeval* %152
}

declare dso_local i32 @timegm(%struct.tm*) #1

declare dso_local %struct.timeval* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
