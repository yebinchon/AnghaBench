; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_vsort.c_vcmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_vsort.c_vcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwstring = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vcmp(%struct.bwstring* %0, %struct.bwstring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bwstring*, align 8
  %5 = alloca %struct.bwstring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.bwstring* %0, %struct.bwstring** %4, align 8
  store %struct.bwstring* %1, %struct.bwstring** %5, align 8
  %16 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %17 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  %18 = icmp eq %struct.bwstring* %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %146

20:                                               ; preds = %2
  %21 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %22 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  %23 = call i32 @bwscmp(%struct.bwstring* %21, %struct.bwstring* %22, i32 0)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %146

27:                                               ; preds = %20
  %28 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %29 = call i64 @BWSLEN(%struct.bwstring* %28)
  store i64 %29, i64* %12, align 8
  store i64 %29, i64* %10, align 8
  %30 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  %31 = call i64 @BWSLEN(%struct.bwstring* %30)
  store i64 %31, i64* %13, align 8
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* %12, align 8
  %33 = icmp ult i64 %32, 1
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %146

35:                                               ; preds = %27
  %36 = load i64, i64* %13, align 8
  %37 = icmp ult i64 %36, 1
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %146

39:                                               ; preds = %35
  %40 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %41 = call i32 @bws_begin(%struct.bwstring* %40)
  store i32 %41, i32* %6, align 4
  %42 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  %43 = call i32 @bws_begin(%struct.bwstring* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @bws_get_iter_value(i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @bws_get_iter_value(i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %48, 46
  br i1 %49, label %50, label %54

50:                                               ; preds = %39
  %51 = load i64, i64* %12, align 8
  %52 = icmp eq i64 %51, 1
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 -1, i32* %3, align 4
  br label %146

54:                                               ; preds = %50, %39
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %55, 46
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i64, i64* %13, align 8
  %59 = icmp eq i64 %58, 1
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 1, i32* %3, align 4
  br label %146

61:                                               ; preds = %57, %54
  %62 = load i64, i64* %12, align 8
  %63 = icmp eq i64 %62, 2
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %65, 46
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @bws_iterator_inc(i32 %68, i64 1)
  %70 = call i32 @bws_get_iter_value(i32 %69)
  %71 = icmp eq i32 %70, 46
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i32 -1, i32* %3, align 4
  br label %146

73:                                               ; preds = %67, %64, %61
  %74 = load i64, i64* %13, align 8
  %75 = icmp eq i64 %74, 2
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = load i32, i32* %9, align 4
  %78 = icmp eq i32 %77, 46
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @bws_iterator_inc(i32 %80, i64 1)
  %82 = call i32 @bws_get_iter_value(i32 %81)
  %83 = icmp eq i32 %82, 46
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store i32 1, i32* %3, align 4
  br label %146

85:                                               ; preds = %79, %76, %73
  %86 = load i32, i32* %8, align 4
  %87 = icmp eq i32 %86, 46
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 46
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i32 -1, i32* %3, align 4
  br label %146

92:                                               ; preds = %88, %85
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 46
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load i32, i32* %9, align 4
  %97 = icmp eq i32 %96, 46
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store i32 1, i32* %3, align 4
  br label %146

99:                                               ; preds = %95, %92
  %100 = load i32, i32* %8, align 4
  %101 = icmp eq i32 %100, 46
  br i1 %101, label %102, label %110

102:                                              ; preds = %99
  %103 = load i32, i32* %9, align 4
  %104 = icmp eq i32 %103, 46
  br i1 %104, label %105, label %110

105:                                              ; preds = %102
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @bws_iterator_inc(i32 %106, i64 1)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @bws_iterator_inc(i32 %108, i64 1)
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %105, %102, %99
  %111 = load i32, i32* %6, align 4
  %112 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %113 = call i32 @bws_end(%struct.bwstring* %112)
  %114 = call i32 @find_suffix(i32 %111, i32 %113, i64* %10)
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  %117 = call i32 @bws_end(%struct.bwstring* %116)
  %118 = call i32 @find_suffix(i32 %115, i32 %117, i64* %11)
  %119 = load i64, i64* %10, align 8
  %120 = load i64, i64* %11, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %130

122:                                              ; preds = %110
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* %7, align 4
  %125 = load i64, i64* %10, align 8
  %126 = call i64 @bws_iterator_cmp(i32 %123, i32 %124, i64 %125)
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %122
  %129 = load i32, i32* %14, align 4
  store i32 %129, i32* %3, align 4
  br label %146

130:                                              ; preds = %122, %110
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* %6, align 4
  %133 = load i64, i64* %10, align 8
  %134 = call i32 @bws_iterator_inc(i32 %132, i64 %133)
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* %7, align 4
  %137 = load i64, i64* %11, align 8
  %138 = call i32 @bws_iterator_inc(i32 %136, i64 %137)
  %139 = call i32 @cmpversions(i32 %131, i32 %134, i32 %135, i32 %138)
  store i32 %139, i32* %15, align 4
  %140 = load i32, i32* %15, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %130
  %143 = load i32, i32* %14, align 4
  store i32 %143, i32* %15, align 4
  br label %144

144:                                              ; preds = %142, %130
  %145 = load i32, i32* %15, align 4
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %144, %128, %98, %91, %84, %72, %60, %53, %38, %34, %26, %19
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32 @bwscmp(%struct.bwstring*, %struct.bwstring*, i32) #1

declare dso_local i64 @BWSLEN(%struct.bwstring*) #1

declare dso_local i32 @bws_begin(%struct.bwstring*) #1

declare dso_local i32 @bws_get_iter_value(i32) #1

declare dso_local i32 @bws_iterator_inc(i32, i64) #1

declare dso_local i32 @find_suffix(i32, i32, i64*) #1

declare dso_local i32 @bws_end(%struct.bwstring*) #1

declare dso_local i64 @bws_iterator_cmp(i32, i32, i64) #1

declare dso_local i32 @cmpversions(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
