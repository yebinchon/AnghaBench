; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpd/extr_modes.c_msearch.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpd/extr_modes.c_msearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.modes = type { i32, i32, i64 }
%struct.termios = type { i32, i32, i32, i32 }

@cmodes = common dso_local global %struct.modes* null, align 8
@imodes = common dso_local global %struct.modes* null, align 8
@lmodes = common dso_local global %struct.modes* null, align 8
@omodes = common dso_local global %struct.modes* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msearch(i8* %0, %struct.termios* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.termios*, align 8
  %6 = alloca %struct.modes*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.termios* %1, %struct.termios** %5, align 8
  %7 = load %struct.modes*, %struct.modes** @cmodes, align 8
  store %struct.modes* %7, %struct.modes** %6, align 8
  br label %8

8:                                                ; preds = %37, %2
  %9 = load %struct.modes*, %struct.modes** %6, align 8
  %10 = getelementptr inbounds %struct.modes, %struct.modes* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %8
  %14 = load i8*, i8** %4, align 8
  %15 = load %struct.modes*, %struct.modes** %6, align 8
  %16 = getelementptr inbounds %struct.modes, %struct.modes* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @CHK(i8* %14, i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %13
  %21 = load %struct.modes*, %struct.modes** %6, align 8
  %22 = getelementptr inbounds %struct.modes, %struct.modes* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.termios*, %struct.termios** %5, align 8
  %26 = getelementptr inbounds %struct.termios, %struct.termios* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.modes*, %struct.modes** %6, align 8
  %30 = getelementptr inbounds %struct.modes, %struct.modes* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.termios*, %struct.termios** %5, align 8
  %33 = getelementptr inbounds %struct.termios, %struct.termios* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  store i32 1, i32* %3, align 4
  br label %143

36:                                               ; preds = %13
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.modes*, %struct.modes** %6, align 8
  %39 = getelementptr inbounds %struct.modes, %struct.modes* %38, i32 1
  store %struct.modes* %39, %struct.modes** %6, align 8
  br label %8

40:                                               ; preds = %8
  %41 = load %struct.modes*, %struct.modes** @imodes, align 8
  store %struct.modes* %41, %struct.modes** %6, align 8
  br label %42

42:                                               ; preds = %71, %40
  %43 = load %struct.modes*, %struct.modes** %6, align 8
  %44 = getelementptr inbounds %struct.modes, %struct.modes* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %74

47:                                               ; preds = %42
  %48 = load i8*, i8** %4, align 8
  %49 = load %struct.modes*, %struct.modes** %6, align 8
  %50 = getelementptr inbounds %struct.modes, %struct.modes* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @CHK(i8* %48, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %47
  %55 = load %struct.modes*, %struct.modes** %6, align 8
  %56 = getelementptr inbounds %struct.modes, %struct.modes* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.termios*, %struct.termios** %5, align 8
  %60 = getelementptr inbounds %struct.termios, %struct.termios* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load %struct.modes*, %struct.modes** %6, align 8
  %64 = getelementptr inbounds %struct.modes, %struct.modes* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.termios*, %struct.termios** %5, align 8
  %67 = getelementptr inbounds %struct.termios, %struct.termios* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  store i32 1, i32* %3, align 4
  br label %143

70:                                               ; preds = %47
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.modes*, %struct.modes** %6, align 8
  %73 = getelementptr inbounds %struct.modes, %struct.modes* %72, i32 1
  store %struct.modes* %73, %struct.modes** %6, align 8
  br label %42

74:                                               ; preds = %42
  %75 = load %struct.modes*, %struct.modes** @lmodes, align 8
  store %struct.modes* %75, %struct.modes** %6, align 8
  br label %76

76:                                               ; preds = %105, %74
  %77 = load %struct.modes*, %struct.modes** %6, align 8
  %78 = getelementptr inbounds %struct.modes, %struct.modes* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %108

81:                                               ; preds = %76
  %82 = load i8*, i8** %4, align 8
  %83 = load %struct.modes*, %struct.modes** %6, align 8
  %84 = getelementptr inbounds %struct.modes, %struct.modes* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = call i64 @CHK(i8* %82, i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %81
  %89 = load %struct.modes*, %struct.modes** %6, align 8
  %90 = getelementptr inbounds %struct.modes, %struct.modes* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = xor i32 %91, -1
  %93 = load %struct.termios*, %struct.termios** %5, align 8
  %94 = getelementptr inbounds %struct.termios, %struct.termios* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, %92
  store i32 %96, i32* %94, align 4
  %97 = load %struct.modes*, %struct.modes** %6, align 8
  %98 = getelementptr inbounds %struct.modes, %struct.modes* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.termios*, %struct.termios** %5, align 8
  %101 = getelementptr inbounds %struct.termios, %struct.termios* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  store i32 1, i32* %3, align 4
  br label %143

104:                                              ; preds = %81
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.modes*, %struct.modes** %6, align 8
  %107 = getelementptr inbounds %struct.modes, %struct.modes* %106, i32 1
  store %struct.modes* %107, %struct.modes** %6, align 8
  br label %76

108:                                              ; preds = %76
  %109 = load %struct.modes*, %struct.modes** @omodes, align 8
  store %struct.modes* %109, %struct.modes** %6, align 8
  br label %110

110:                                              ; preds = %139, %108
  %111 = load %struct.modes*, %struct.modes** %6, align 8
  %112 = getelementptr inbounds %struct.modes, %struct.modes* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %142

115:                                              ; preds = %110
  %116 = load i8*, i8** %4, align 8
  %117 = load %struct.modes*, %struct.modes** %6, align 8
  %118 = getelementptr inbounds %struct.modes, %struct.modes* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = call i64 @CHK(i8* %116, i64 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %138

122:                                              ; preds = %115
  %123 = load %struct.modes*, %struct.modes** %6, align 8
  %124 = getelementptr inbounds %struct.modes, %struct.modes* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = xor i32 %125, -1
  %127 = load %struct.termios*, %struct.termios** %5, align 8
  %128 = getelementptr inbounds %struct.termios, %struct.termios* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, %126
  store i32 %130, i32* %128, align 4
  %131 = load %struct.modes*, %struct.modes** %6, align 8
  %132 = getelementptr inbounds %struct.modes, %struct.modes* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.termios*, %struct.termios** %5, align 8
  %135 = getelementptr inbounds %struct.termios, %struct.termios* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 4
  store i32 1, i32* %3, align 4
  br label %143

138:                                              ; preds = %115
  br label %139

139:                                              ; preds = %138
  %140 = load %struct.modes*, %struct.modes** %6, align 8
  %141 = getelementptr inbounds %struct.modes, %struct.modes* %140, i32 1
  store %struct.modes* %141, %struct.modes** %6, align 8
  br label %110

142:                                              ; preds = %110
  store i32 0, i32* %3, align 4
  br label %143

143:                                              ; preds = %142, %122, %88, %54, %20
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i64 @CHK(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
