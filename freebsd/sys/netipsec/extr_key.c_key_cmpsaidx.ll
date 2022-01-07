; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netipsec/extr_key.c_key_cmpsaidx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netipsec/extr_key.c_key_cmpsaidx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secasindex = type { i64, i64, i64, %struct.TYPE_6__, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@CMP_EXACTLY = common dso_local global i32 0, align 4
@CMP_MODE_REQID = common dso_local global i32 0, align 4
@CMP_REQID = common dso_local global i32 0, align 4
@IPSEC_MODE_ANY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.secasindex*, %struct.secasindex*, i32)* @key_cmpsaidx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_cmpsaidx(%struct.secasindex* %0, %struct.secasindex* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.secasindex*, align 8
  %6 = alloca %struct.secasindex*, align 8
  %7 = alloca i32, align 4
  store %struct.secasindex* %0, %struct.secasindex** %5, align 8
  store %struct.secasindex* %1, %struct.secasindex** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.secasindex*, %struct.secasindex** %5, align 8
  %9 = icmp eq %struct.secasindex* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load %struct.secasindex*, %struct.secasindex** %6, align 8
  %12 = icmp eq %struct.secasindex* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 1, i32* %4, align 4
  br label %143

14:                                               ; preds = %10, %3
  %15 = load %struct.secasindex*, %struct.secasindex** %5, align 8
  %16 = icmp eq %struct.secasindex* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load %struct.secasindex*, %struct.secasindex** %6, align 8
  %19 = icmp eq %struct.secasindex* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %14
  store i32 0, i32* %4, align 4
  br label %143

21:                                               ; preds = %17
  %22 = load %struct.secasindex*, %struct.secasindex** %5, align 8
  %23 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.secasindex*, %struct.secasindex** %6, align 8
  %26 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %143

30:                                               ; preds = %21
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @CMP_EXACTLY, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %78

34:                                               ; preds = %30
  %35 = load %struct.secasindex*, %struct.secasindex** %5, align 8
  %36 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.secasindex*, %struct.secasindex** %6, align 8
  %39 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %143

43:                                               ; preds = %34
  %44 = load %struct.secasindex*, %struct.secasindex** %5, align 8
  %45 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.secasindex*, %struct.secasindex** %6, align 8
  %48 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %143

52:                                               ; preds = %43
  %53 = load %struct.secasindex*, %struct.secasindex** %5, align 8
  %54 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %53, i32 0, i32 4
  %55 = load %struct.secasindex*, %struct.secasindex** %6, align 8
  %56 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %55, i32 0, i32 4
  %57 = load %struct.secasindex*, %struct.secasindex** %5, align 8
  %58 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @bcmp(%struct.TYPE_6__* %54, %struct.TYPE_6__* %56, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %76, label %64

64:                                               ; preds = %52
  %65 = load %struct.secasindex*, %struct.secasindex** %5, align 8
  %66 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %65, i32 0, i32 3
  %67 = load %struct.secasindex*, %struct.secasindex** %6, align 8
  %68 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %67, i32 0, i32 3
  %69 = load %struct.secasindex*, %struct.secasindex** %5, align 8
  %70 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @bcmp(%struct.TYPE_6__* %66, %struct.TYPE_6__* %68, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %64, %52
  store i32 0, i32* %4, align 4
  br label %143

77:                                               ; preds = %64
  br label %142

78:                                               ; preds = %30
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @CMP_MODE_REQID, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @CMP_REQID, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %101

86:                                               ; preds = %82, %78
  %87 = load %struct.secasindex*, %struct.secasindex** %6, align 8
  %88 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %86
  %92 = load %struct.secasindex*, %struct.secasindex** %5, align 8
  %93 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.secasindex*, %struct.secasindex** %6, align 8
  %96 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %94, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  store i32 0, i32* %4, align 4
  br label %143

100:                                              ; preds = %91, %86
  br label %101

101:                                              ; preds = %100, %82
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @CMP_MODE_REQID, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %121

105:                                              ; preds = %101
  %106 = load %struct.secasindex*, %struct.secasindex** %5, align 8
  %107 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @IPSEC_MODE_ANY, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %105
  %112 = load %struct.secasindex*, %struct.secasindex** %5, align 8
  %113 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.secasindex*, %struct.secasindex** %6, align 8
  %116 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %114, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  store i32 0, i32* %4, align 4
  br label %143

120:                                              ; preds = %111, %105
  br label %121

121:                                              ; preds = %120, %101
  %122 = load %struct.secasindex*, %struct.secasindex** %5, align 8
  %123 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load %struct.secasindex*, %struct.secasindex** %6, align 8
  %126 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = call i64 @key_sockaddrcmp(%struct.TYPE_5__* %124, %struct.TYPE_5__* %127, i32 0)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %121
  store i32 0, i32* %4, align 4
  br label %143

131:                                              ; preds = %121
  %132 = load %struct.secasindex*, %struct.secasindex** %5, align 8
  %133 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load %struct.secasindex*, %struct.secasindex** %6, align 8
  %136 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = call i64 @key_sockaddrcmp(%struct.TYPE_5__* %134, %struct.TYPE_5__* %137, i32 0)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %131
  store i32 0, i32* %4, align 4
  br label %143

141:                                              ; preds = %131
  br label %142

142:                                              ; preds = %141, %77
  store i32 1, i32* %4, align 4
  br label %143

143:                                              ; preds = %142, %140, %130, %119, %99, %76, %51, %42, %29, %20, %13
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i64 @bcmp(%struct.TYPE_6__*, %struct.TYPE_6__*, i32) #1

declare dso_local i64 @key_sockaddrcmp(%struct.TYPE_5__*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
