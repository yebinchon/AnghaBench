; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_ip6_id.c_initid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_ip6_id.c_initid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.randomtab = type { i32, i32, i32, i32, i32, i32, i32, i64*, i32, i64, i64, i64, i32, i8*, i32, i8* }

@time_uptime = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.randomtab*)* @initid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initid(%struct.randomtab* %0) #0 {
  %2 = alloca %struct.randomtab*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.randomtab* %0, %struct.randomtab** %2, align 8
  store i32 1, i32* %5, align 4
  %6 = call i32 (...) @arc4random()
  %7 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %8 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = urem i32 %6, %9
  %11 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %12 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = call i32 (...) @arc4random()
  %14 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %15 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 32, %16
  %18 = add nsw i32 %17, 1
  %19 = lshr i32 -1, %18
  %20 = and i32 %13, %19
  %21 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %22 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = call i32 (...) @arc4random()
  %24 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %25 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 32, %26
  %28 = add nsw i32 %27, 1
  %29 = lshr i32 -1, %28
  %30 = and i32 %23, %29
  %31 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %32 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  %33 = call i32 (...) @arc4random()
  %34 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %35 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 32, %36
  %38 = lshr i32 -1, %37
  %39 = and i32 %33, %38
  %40 = or i32 %39, 1
  %41 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %42 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 4
  %43 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %44 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %43, i32 0, i32 14
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (...) @arc4random()
  %47 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %48 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 32, %49
  %51 = lshr i32 -1, %50
  %52 = and i32 %46, %51
  %53 = and i32 %52, -2
  %54 = zext i32 %53 to i64
  %55 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %56 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @pmod(i32 %45, i64 %54, i32 %57)
  %59 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %60 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %59, i32 0, i32 15
  store i8* %58, i8** %60, align 8
  br label %61

61:                                               ; preds = %67, %1
  %62 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %63 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = urem i32 %64, 3
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %69 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = add i32 %70, 2
  store i32 %71, i32* %69, align 4
  br label %61

72:                                               ; preds = %61
  %73 = call i32 (...) @arc4random()
  %74 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %75 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 8
  %77 = urem i32 %73, %76
  %78 = zext i32 %77 to i64
  store i64 %78, i64* %3, align 8
  br label %79

79:                                               ; preds = %123, %72
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %124

82:                                               ; preds = %79
  store i64 0, i64* %4, align 8
  br label %83

83:                                               ; preds = %103, %82
  %84 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %85 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %84, i32 0, i32 7
  %86 = load i64*, i64** %85, align 8
  %87 = load i64, i64* %4, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = icmp ugt i64 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %83
  %92 = load i64, i64* %3, align 8
  %93 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %94 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %93, i32 0, i32 7
  %95 = load i64*, i64** %94, align 8
  %96 = load i64, i64* %4, align 8
  %97 = getelementptr inbounds i64, i64* %95, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = urem i64 %92, %98
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %91
  br label %106

102:                                              ; preds = %91
  br label %103

103:                                              ; preds = %102
  %104 = load i64, i64* %4, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %4, align 8
  br label %83

106:                                              ; preds = %101, %83
  %107 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %108 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %107, i32 0, i32 7
  %109 = load i64*, i64** %108, align 8
  %110 = load i64, i64* %4, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  store i32 0, i32* %5, align 4
  br label %123

115:                                              ; preds = %106
  %116 = load i64, i64* %3, align 8
  %117 = add i64 %116, 1
  %118 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %119 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 8
  %121 = zext i32 %120 to i64
  %122 = urem i64 %117, %121
  store i64 %122, i64* %3, align 8
  br label %123

123:                                              ; preds = %115, %114
  br label %79

124:                                              ; preds = %79
  %125 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %126 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %125, i32 0, i32 12
  %127 = load i32, i32* %126, align 8
  %128 = load i64, i64* %3, align 8
  %129 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %130 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %129, i32 0, i32 6
  %131 = load i32, i32* %130, align 8
  %132 = call i8* @pmod(i32 %127, i64 %128, i32 %131)
  %133 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %134 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %133, i32 0, i32 13
  store i8* %132, i8** %134, align 8
  %135 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %136 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %135, i32 0, i32 11
  store i64 0, i64* %136, align 8
  %137 = load i64, i64* @time_uptime, align 8
  %138 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %139 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %138, i32 0, i32 9
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %137, %140
  %142 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %143 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %142, i32 0, i32 10
  store i64 %141, i64* %143, align 8
  %144 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %145 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %144, i32 0, i32 8
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %124
  br label %155

149:                                              ; preds = %124
  %150 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %151 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = sub nsw i32 %152, 1
  %154 = shl i32 1, %153
  br label %155

155:                                              ; preds = %149, %148
  %156 = phi i32 [ 0, %148 ], [ %154, %149 ]
  %157 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %158 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %157, i32 0, i32 8
  store i32 %156, i32* %158, align 8
  ret void
}

declare dso_local i32 @arc4random(...) #1

declare dso_local i8* @pmod(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
