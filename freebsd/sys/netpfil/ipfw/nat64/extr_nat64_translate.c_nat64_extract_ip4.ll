; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64_translate.c_nat64_extract_ip4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64_translate.c_nat64_extract_ip4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32*, i32* }

@DP_GENERIC = common dso_local global i32 0, align 4
@DP_DROPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"invalid destination address: %08x\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"invalid IPv4-embedded IPv6 address\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nat64_extract_ip4(%struct.in6_addr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.in6_addr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.in6_addr* %0, %struct.in6_addr** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %94 [
    i32 32, label %8
    i32 40, label %24
    i32 48, label %42
    i32 56, label %60
    i32 64, label %76
  ]

8:                                                ; preds = %2
  %9 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %10 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 3
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %8
  %16 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %17 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15, %8
  br label %151

23:                                               ; preds = %15
  br label %94

24:                                               ; preds = %2
  %25 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %26 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 3
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %24
  %32 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %33 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @htonl(i32 -16711681)
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31, %24
  br label %151

41:                                               ; preds = %31
  br label %94

42:                                               ; preds = %2
  %43 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %44 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 3
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %42
  %50 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %51 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @htonl(i32 -16776961)
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %49, %42
  br label %151

59:                                               ; preds = %49
  br label %94

60:                                               ; preds = %2
  %61 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %62 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 3
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %60
  %68 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %69 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 8
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67, %60
  br label %151

75:                                               ; preds = %67
  br label %94

76:                                               ; preds = %2
  %77 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %78 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 8
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %76
  %84 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %85 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 3
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @htonl(i32 16777215)
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %83, %76
  br label %151

93:                                               ; preds = %83
  br label %94

94:                                               ; preds = %93, %2, %75, %59, %41, %23
  %95 = load i32, i32* %5, align 4
  switch i32 %95, label %138 [
    i32 32, label %96
    i32 96, label %96
    i32 40, label %105
    i32 48, label %105
    i32 56, label %105
    i32 64, label %124
  ]

96:                                               ; preds = %94, %94
  %97 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %98 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sdiv i32 %100, 32
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %6, align 4
  br label %139

105:                                              ; preds = %94, %94, %94
  %106 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %107 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %5, align 4
  %112 = srem i32 %111, 32
  %113 = shl i32 %110, %112
  %114 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %115 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 2
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %5, align 4
  %120 = srem i32 %119, 32
  %121 = sub nsw i32 24, %120
  %122 = ashr i32 %118, %121
  %123 = or i32 %113, %122
  store i32 %123, i32* %6, align 4
  br label %139

124:                                              ; preds = %94
  %125 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %126 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 2
  %129 = load i32, i32* %128, align 4
  %130 = shl i32 %129, 8
  %131 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %132 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 3
  %135 = load i32, i32* %134, align 4
  %136 = ashr i32 %135, 24
  %137 = or i32 %130, %136
  store i32 %137, i32* %6, align 4
  br label %139

138:                                              ; preds = %94
  store i32 0, i32* %3, align 4
  br label %156

139:                                              ; preds = %124, %105, %96
  %140 = load i32, i32* %6, align 4
  %141 = call i64 @nat64_check_ip4(i32 %140)
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %139
  %144 = load i32, i32* %6, align 4
  store i32 %144, i32* %3, align 4
  br label %156

145:                                              ; preds = %139
  %146 = load i32, i32* @DP_GENERIC, align 4
  %147 = load i32, i32* @DP_DROPS, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* %6, align 4
  %150 = call i32 (i32, i8*, ...) @DPRINTF(i32 %148, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %149)
  store i32 0, i32* %3, align 4
  br label %156

151:                                              ; preds = %92, %74, %58, %40, %22
  %152 = load i32, i32* @DP_GENERIC, align 4
  %153 = load i32, i32* @DP_DROPS, align 4
  %154 = or i32 %152, %153
  %155 = call i32 (i32, i8*, ...) @DPRINTF(i32 %154, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %156

156:                                              ; preds = %151, %145, %143, %138
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @nat64_check_ip4(i32) #1

declare dso_local i32 @DPRINTF(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
