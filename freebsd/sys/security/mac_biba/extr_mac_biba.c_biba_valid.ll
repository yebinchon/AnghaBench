; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_biba/extr_mac_biba.c_biba_valid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_biba/extr_mac_biba.c_biba_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_biba = type { i32, %struct.TYPE_5__, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@MAC_BIBA_FLAG_EFFECTIVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAC_BIBA_TYPE_UNDEF = common dso_local global i32 0, align 4
@MAC_BIBA_FLAG_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mac_biba*)* @biba_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @biba_valid(%struct.mac_biba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mac_biba*, align 8
  store %struct.mac_biba* %0, %struct.mac_biba** %3, align 8
  %4 = load %struct.mac_biba*, %struct.mac_biba** %3, align 8
  %5 = getelementptr inbounds %struct.mac_biba, %struct.mac_biba* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @MAC_BIBA_FLAG_EFFECTIVE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %1
  %11 = load %struct.mac_biba*, %struct.mac_biba** %3, align 8
  %12 = getelementptr inbounds %struct.mac_biba, %struct.mac_biba* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %32 [
    i32 130, label %15
    i32 131, label %16
    i32 129, label %16
    i32 128, label %16
  ]

15:                                               ; preds = %10
  br label %34

16:                                               ; preds = %10, %10, %10
  %17 = load %struct.mac_biba*, %struct.mac_biba** %3, align 8
  %18 = getelementptr inbounds %struct.mac_biba, %struct.mac_biba* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %16
  %23 = load %struct.mac_biba*, %struct.mac_biba** %3, align 8
  %24 = getelementptr inbounds %struct.mac_biba, %struct.mac_biba* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @MAC_BIBA_BIT_SET_EMPTY(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %22, %16
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %2, align 4
  br label %128

31:                                               ; preds = %22
  br label %34

32:                                               ; preds = %10
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %2, align 4
  br label %128

34:                                               ; preds = %31, %15
  br label %45

35:                                               ; preds = %1
  %36 = load %struct.mac_biba*, %struct.mac_biba** %3, align 8
  %37 = getelementptr inbounds %struct.mac_biba, %struct.mac_biba* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MAC_BIBA_TYPE_UNDEF, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* %2, align 4
  br label %128

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %34
  %46 = load %struct.mac_biba*, %struct.mac_biba** %3, align 8
  %47 = getelementptr inbounds %struct.mac_biba, %struct.mac_biba* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @MAC_BIBA_FLAG_RANGE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %110

52:                                               ; preds = %45
  %53 = load %struct.mac_biba*, %struct.mac_biba** %3, align 8
  %54 = getelementptr inbounds %struct.mac_biba, %struct.mac_biba* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %74 [
    i32 130, label %57
    i32 131, label %58
    i32 129, label %58
    i32 128, label %58
  ]

57:                                               ; preds = %52
  br label %76

58:                                               ; preds = %52, %52, %52
  %59 = load %struct.mac_biba*, %struct.mac_biba** %3, align 8
  %60 = getelementptr inbounds %struct.mac_biba, %struct.mac_biba* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %58
  %65 = load %struct.mac_biba*, %struct.mac_biba** %3, align 8
  %66 = getelementptr inbounds %struct.mac_biba, %struct.mac_biba* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @MAC_BIBA_BIT_SET_EMPTY(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %64, %58
  %72 = load i32, i32* @EINVAL, align 4
  store i32 %72, i32* %2, align 4
  br label %128

73:                                               ; preds = %64
  br label %76

74:                                               ; preds = %52
  %75 = load i32, i32* @EINVAL, align 4
  store i32 %75, i32* %2, align 4
  br label %128

76:                                               ; preds = %73, %57
  %77 = load %struct.mac_biba*, %struct.mac_biba** %3, align 8
  %78 = getelementptr inbounds %struct.mac_biba, %struct.mac_biba* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  switch i32 %80, label %98 [
    i32 130, label %81
    i32 131, label %82
    i32 129, label %82
    i32 128, label %82
  ]

81:                                               ; preds = %76
  br label %100

82:                                               ; preds = %76, %76, %76
  %83 = load %struct.mac_biba*, %struct.mac_biba** %3, align 8
  %84 = getelementptr inbounds %struct.mac_biba, %struct.mac_biba* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %82
  %89 = load %struct.mac_biba*, %struct.mac_biba** %3, align 8
  %90 = getelementptr inbounds %struct.mac_biba, %struct.mac_biba* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @MAC_BIBA_BIT_SET_EMPTY(i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %88, %82
  %96 = load i32, i32* @EINVAL, align 4
  store i32 %96, i32* %2, align 4
  br label %128

97:                                               ; preds = %88
  br label %100

98:                                               ; preds = %76
  %99 = load i32, i32* @EINVAL, align 4
  store i32 %99, i32* %2, align 4
  br label %128

100:                                              ; preds = %97, %81
  %101 = load %struct.mac_biba*, %struct.mac_biba** %3, align 8
  %102 = getelementptr inbounds %struct.mac_biba, %struct.mac_biba* %101, i32 0, i32 1
  %103 = load %struct.mac_biba*, %struct.mac_biba** %3, align 8
  %104 = getelementptr inbounds %struct.mac_biba, %struct.mac_biba* %103, i32 0, i32 2
  %105 = call i32 @biba_dominate_element(%struct.TYPE_5__* %102, %struct.TYPE_6__* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %100
  %108 = load i32, i32* @EINVAL, align 4
  store i32 %108, i32* %2, align 4
  br label %128

109:                                              ; preds = %100
  br label %127

110:                                              ; preds = %45
  %111 = load %struct.mac_biba*, %struct.mac_biba** %3, align 8
  %112 = getelementptr inbounds %struct.mac_biba, %struct.mac_biba* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @MAC_BIBA_TYPE_UNDEF, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %124, label %117

117:                                              ; preds = %110
  %118 = load %struct.mac_biba*, %struct.mac_biba** %3, align 8
  %119 = getelementptr inbounds %struct.mac_biba, %struct.mac_biba* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @MAC_BIBA_TYPE_UNDEF, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %117, %110
  %125 = load i32, i32* @EINVAL, align 4
  store i32 %125, i32* %2, align 4
  br label %128

126:                                              ; preds = %117
  br label %127

127:                                              ; preds = %126, %109
  store i32 0, i32* %2, align 4
  br label %128

128:                                              ; preds = %127, %124, %107, %98, %95, %74, %71, %42, %32, %29
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @MAC_BIBA_BIT_SET_EMPTY(i32) #1

declare dso_local i32 @biba_dominate_element(%struct.TYPE_5__*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
