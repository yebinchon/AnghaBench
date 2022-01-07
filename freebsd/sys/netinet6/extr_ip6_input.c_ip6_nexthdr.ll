; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_ip6_input.c_ip6_nexthdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_ip6_input.c_ip6_nexthdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ip6_hdr = type { i32 }
%struct.ip6_ext = type { i32, i32 }
%struct.ip6_frag = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"ip6_nexthdr: m == NULL\00", align 1
@M_PKTHDR = common dso_local global i32 0, align 4
@IP6F_OFF_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip6_nexthdr(%struct.mbuf* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ip6_hdr, align 4
  %11 = alloca %struct.ip6_ext, align 4
  %12 = alloca %struct.ip6_frag, align 4
  store %struct.mbuf* %0, %struct.mbuf** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %14 = icmp eq %struct.mbuf* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %4
  %18 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %19 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @M_PKTHDR, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %17
  %25 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %26 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24, %17
  store i32 -1, i32* %5, align 4
  br label %159

32:                                               ; preds = %24
  %33 = load i32, i32* %8, align 4
  switch i32 %33, label %158 [
    i32 130, label %34
    i32 133, label %62
    i32 136, label %97
    i32 132, label %127
    i32 128, label %127
    i32 135, label %127
    i32 129, label %157
    i32 134, label %157
    i32 131, label %157
  ]

34:                                               ; preds = %32
  %35 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %36 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = add i64 %41, 4
  %43 = icmp ult i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  store i32 -1, i32* %5, align 4
  br label %159

45:                                               ; preds = %34
  %46 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = ptrtoint %struct.ip6_hdr* %10 to i32
  %49 = call i32 @m_copydata(%struct.mbuf* %46, i32 %47, i32 4, i32 %48)
  %50 = load i32*, i32** %9, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %10, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %9, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %52, %45
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = add i64 %58, 4
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %5, align 4
  br label %159

62:                                               ; preds = %32
  %63 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %64 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = add i64 %69, 8
  %71 = icmp ult i64 %67, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  store i32 -1, i32* %5, align 4
  br label %159

73:                                               ; preds = %62
  %74 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = ptrtoint %struct.ip6_frag* %12 to i32
  %77 = call i32 @m_copydata(%struct.mbuf* %74, i32 %75, i32 8, i32 %76)
  %78 = getelementptr inbounds %struct.ip6_frag, %struct.ip6_frag* %12, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @IP6F_OFF_MASK, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  store i32 -1, i32* %5, align 4
  br label %159

84:                                               ; preds = %73
  %85 = load i32*, i32** %9, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.ip6_frag, %struct.ip6_frag* %12, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %9, align 8
  store i32 %89, i32* %90, align 4
  br label %91

91:                                               ; preds = %87, %84
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = add i64 %93, 8
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %5, align 4
  br label %159

97:                                               ; preds = %32
  %98 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %99 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = add i64 %104, 8
  %106 = icmp ult i64 %102, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %97
  store i32 -1, i32* %5, align 4
  br label %159

108:                                              ; preds = %97
  %109 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %110 = load i32, i32* %7, align 4
  %111 = ptrtoint %struct.ip6_ext* %11 to i32
  %112 = call i32 @m_copydata(%struct.mbuf* %109, i32 %110, i32 8, i32 %111)
  %113 = load i32*, i32** %9, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %119

115:                                              ; preds = %108
  %116 = getelementptr inbounds %struct.ip6_ext, %struct.ip6_ext* %11, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %9, align 8
  store i32 %117, i32* %118, align 4
  br label %119

119:                                              ; preds = %115, %108
  %120 = getelementptr inbounds %struct.ip6_ext, %struct.ip6_ext* %11, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 2
  %123 = shl i32 %122, 2
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  store i32 %126, i32* %5, align 4
  br label %159

127:                                              ; preds = %32, %32, %32
  %128 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %129 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = add i64 %134, 8
  %136 = icmp ult i64 %132, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %127
  store i32 -1, i32* %5, align 4
  br label %159

138:                                              ; preds = %127
  %139 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %140 = load i32, i32* %7, align 4
  %141 = ptrtoint %struct.ip6_ext* %11 to i32
  %142 = call i32 @m_copydata(%struct.mbuf* %139, i32 %140, i32 8, i32 %141)
  %143 = load i32*, i32** %9, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %145, label %149

145:                                              ; preds = %138
  %146 = getelementptr inbounds %struct.ip6_ext, %struct.ip6_ext* %11, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** %9, align 8
  store i32 %147, i32* %148, align 4
  br label %149

149:                                              ; preds = %145, %138
  %150 = getelementptr inbounds %struct.ip6_ext, %struct.ip6_ext* %11, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, 1
  %153 = shl i32 %152, 3
  %154 = load i32, i32* %7, align 4
  %155 = add nsw i32 %154, %153
  store i32 %155, i32* %7, align 4
  %156 = load i32, i32* %7, align 4
  store i32 %156, i32* %5, align 4
  br label %159

157:                                              ; preds = %32, %32, %32
  store i32 -1, i32* %5, align 4
  br label %159

158:                                              ; preds = %32
  store i32 -1, i32* %5, align 4
  br label %159

159:                                              ; preds = %158, %157, %149, %137, %119, %107, %91, %83, %72, %56, %44, %31
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @m_copydata(%struct.mbuf*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
