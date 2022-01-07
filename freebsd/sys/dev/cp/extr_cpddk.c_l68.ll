; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_l68.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_l68.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @l68 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l68(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8, align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i8 1, i8* %3, align 1
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 4
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 7
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 8
  br i1 %17, label %19, label %18

18:                                               ; preds = %13, %8, %1
  br label %20

19:                                               ; preds = %13
  br label %117

20:                                               ; preds = %18
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %31

26:                                               ; preds = %20
  %27 = load i8, i8* %3, align 1
  %28 = zext i8 %27 to i32
  %29 = or i32 %28, 2
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %3, align 1
  br label %31

31:                                               ; preds = %26, %25
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %42

37:                                               ; preds = %31
  %38 = load i8, i8* %3, align 1
  %39 = zext i8 %38 to i32
  %40 = or i32 %39, 8
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %3, align 1
  br label %42

42:                                               ; preds = %37, %36
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %53

48:                                               ; preds = %42
  %49 = load i8, i8* %3, align 1
  %50 = zext i8 %49 to i32
  %51 = or i32 %50, 48
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %3, align 1
  br label %77

53:                                               ; preds = %47
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  br label %76

59:                                               ; preds = %53
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %74 [
    i32 4, label %63
    i32 7, label %68
    i32 8, label %73
  ]

63:                                               ; preds = %59
  %64 = load i8, i8* %3, align 1
  %65 = zext i8 %64 to i32
  %66 = or i32 %65, 16
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %3, align 1
  br label %75

68:                                               ; preds = %59
  %69 = load i8, i8* %3, align 1
  %70 = zext i8 %69 to i32
  %71 = or i32 %70, 32
  %72 = trunc i32 %71 to i8
  store i8 %72, i8* %3, align 1
  br label %75

73:                                               ; preds = %59
  br label %74

74:                                               ; preds = %59, %73
  br label %75

75:                                               ; preds = %74, %68, %63
  br label %76

76:                                               ; preds = %75, %58
  br label %77

77:                                               ; preds = %76, %48
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  br label %88

83:                                               ; preds = %77
  %84 = load i8, i8* %3, align 1
  %85 = zext i8 %84 to i32
  %86 = or i32 %85, 128
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %3, align 1
  br label %100

88:                                               ; preds = %82
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %88
  br label %99

94:                                               ; preds = %88
  %95 = load i8, i8* %3, align 1
  %96 = zext i8 %95 to i32
  %97 = or i32 %96, 64
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %3, align 1
  br label %99

99:                                               ; preds = %94, %93
  br label %100

100:                                              ; preds = %99, %83
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %100
  br label %111

106:                                              ; preds = %100
  %107 = load i8, i8* %3, align 1
  %108 = zext i8 %107 to i32
  %109 = or i32 %108, 4
  %110 = trunc i32 %109 to i8
  store i8 %110, i8* %3, align 1
  br label %111

111:                                              ; preds = %106, %105
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i8, i8* %3, align 1
  %116 = call i32 @l(i32 %114, i32 8, i8 zeroext %115)
  br label %117

117:                                              ; preds = %111, %19
  ret void
}

declare dso_local i32 @l(i32, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
