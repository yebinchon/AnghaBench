; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ce/extr_tau32-ddk.c_TAU32_UpdateIdleCodes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ce/extr_tau32-ddk.c_TAU32_UpdateIdleCodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8**, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TAU32_UpdateIdleCodes(%struct.TYPE_4__* %0, i32 %1, i64 %2, i8 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8 %3, i8* %9, align 1
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %21, label %17

17:                                               ; preds = %14, %4
  %18 = load i64, i64* %8, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  br label %22

21:                                               ; preds = %17, %14
  store i32 0, i32* %5, align 4
  br label %134

22:                                               ; preds = %20
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27, %22
  br label %32

31:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %134

32:                                               ; preds = %30
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = call i32 @h2LrH3(i32* %34)
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %121, %32
  %37 = load i64, i64* %8, align 8
  %38 = and i64 %37, 1
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  br label %115

41:                                               ; preds = %36
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  br label %74

48:                                               ; preds = %44, %41
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i8**, i8*** %50, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = load i8, i8* %9, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp ne i32 %58, %60
  br i1 %61, label %63, label %62

62:                                               ; preds = %48
  br label %73

63:                                               ; preds = %48
  %64 = load i8, i8* %9, align 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i8**, i8*** %66, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 0
  %69 = load i8*, i8** %68, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  store i8 %64, i8* %72, align 1
  store i32 1, i32* %10, align 4
  br label %73

73:                                               ; preds = %63, %62
  br label %74

74:                                               ; preds = %73, %47
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 2
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  br label %114

80:                                               ; preds = %74
  %81 = load i32, i32* %7, align 4
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %87, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %7, align 4
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  br label %113

87:                                               ; preds = %83, %80
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i8**, i8*** %89, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 1
  %92 = load i8*, i8** %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = load i8, i8* %9, align 1
  %99 = zext i8 %98 to i32
  %100 = icmp ne i32 %97, %99
  br i1 %100, label %102, label %101

101:                                              ; preds = %87
  br label %112

102:                                              ; preds = %87
  %103 = load i8, i8* %9, align 1
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i8**, i8*** %105, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 1
  %108 = load i8*, i8** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  store i8 %103, i8* %111, align 1
  store i32 1, i32* %10, align 4
  br label %112

112:                                              ; preds = %102, %101
  br label %113

113:                                              ; preds = %112, %86
  br label %114

114:                                              ; preds = %113, %79
  br label %115

115:                                              ; preds = %114, %40
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %11, align 4
  %118 = load i64, i64* %8, align 8
  %119 = lshr i64 %118, 1
  store i64 %119, i64* %8, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  br label %36

122:                                              ; preds = %115
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %122
  br label %130

126:                                              ; preds = %122
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @GLE_s4(%struct.TYPE_4__* %127, i32 %128)
  br label %130

130:                                              ; preds = %126, %125
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 2
  %133 = call i32 @uYS5N2(i32* %132)
  store i32 1, i32* %5, align 4
  br label %134

134:                                              ; preds = %130, %31, %21
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local i32 @h2LrH3(i32*) #1

declare dso_local i32 @GLE_s4(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @uYS5N2(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
