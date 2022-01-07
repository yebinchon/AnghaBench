; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_coll.c_preproc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_coll.c_preproc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.key_specs = type { %struct.sort_mods }
%struct.sort_mods = type { i64, i64, i64, i64, i64 }
%struct.bwstring = type { i32 }
%struct.keys_array = type { i32 }

@sort_opts_vals = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@keys_num = common dso_local global i64 0, align 8
@keys = common dso_local global %struct.key_specs* null, align 8
@default_sort_mods = common dso_local global %struct.sort_mods* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @preproc(%struct.bwstring* %0, %struct.keys_array* %1) #0 {
  %3 = alloca %struct.bwstring*, align 8
  %4 = alloca %struct.keys_array*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bwstring*, align 8
  %7 = alloca %struct.key_specs*, align 8
  %8 = alloca %struct.sort_mods*, align 8
  %9 = alloca %struct.bwstring*, align 8
  %10 = alloca %struct.sort_mods*, align 8
  store %struct.bwstring* %0, %struct.bwstring** %3, align 8
  store %struct.keys_array* %1, %struct.keys_array** %4, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sort_opts_vals, i32 0, i32 0), align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %65

13:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  br label %14

14:                                               ; preds = %61, %13
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @keys_num, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %64

18:                                               ; preds = %14
  %19 = load %struct.key_specs*, %struct.key_specs** @keys, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds %struct.key_specs, %struct.key_specs* %19, i64 %20
  store %struct.key_specs* %21, %struct.key_specs** %7, align 8
  %22 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %23 = load %struct.key_specs*, %struct.key_specs** %7, align 8
  %24 = call %struct.bwstring* @cut_field(%struct.bwstring* %22, %struct.key_specs* %23)
  store %struct.bwstring* %24, %struct.bwstring** %6, align 8
  %25 = load %struct.key_specs*, %struct.key_specs** %7, align 8
  %26 = getelementptr inbounds %struct.key_specs, %struct.key_specs* %25, i32 0, i32 0
  store %struct.sort_mods* %26, %struct.sort_mods** %8, align 8
  %27 = load %struct.sort_mods*, %struct.sort_mods** %8, align 8
  %28 = getelementptr inbounds %struct.sort_mods, %struct.sort_mods* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %18
  %32 = load %struct.bwstring*, %struct.bwstring** %6, align 8
  %33 = call %struct.bwstring* @dictionary_order(%struct.bwstring* %32)
  store %struct.bwstring* %33, %struct.bwstring** %6, align 8
  br label %43

34:                                               ; preds = %18
  %35 = load %struct.sort_mods*, %struct.sort_mods** %8, align 8
  %36 = getelementptr inbounds %struct.sort_mods, %struct.sort_mods* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.bwstring*, %struct.bwstring** %6, align 8
  %41 = call %struct.bwstring* @ignore_nonprinting(%struct.bwstring* %40)
  store %struct.bwstring* %41, %struct.bwstring** %6, align 8
  br label %42

42:                                               ; preds = %39, %34
  br label %43

43:                                               ; preds = %42, %31
  %44 = load %struct.sort_mods*, %struct.sort_mods** %8, align 8
  %45 = getelementptr inbounds %struct.sort_mods, %struct.sort_mods* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load %struct.sort_mods*, %struct.sort_mods** %8, align 8
  %50 = getelementptr inbounds %struct.sort_mods, %struct.sort_mods* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48, %43
  %54 = load %struct.bwstring*, %struct.bwstring** %6, align 8
  %55 = call %struct.bwstring* @ignore_case(%struct.bwstring* %54)
  store %struct.bwstring* %55, %struct.bwstring** %6, align 8
  br label %56

56:                                               ; preds = %53, %48
  %57 = load %struct.keys_array*, %struct.keys_array** %4, align 8
  %58 = load %struct.bwstring*, %struct.bwstring** %6, align 8
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @set_key_on_keys_array(%struct.keys_array* %57, %struct.bwstring* %58, i64 %59)
  br label %61

61:                                               ; preds = %56
  %62 = load i64, i64* %5, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %5, align 8
  br label %14

64:                                               ; preds = %14
  br label %140

65:                                               ; preds = %2
  store %struct.bwstring* null, %struct.bwstring** %9, align 8
  %66 = load %struct.sort_mods*, %struct.sort_mods** @default_sort_mods, align 8
  store %struct.sort_mods* %66, %struct.sort_mods** %10, align 8
  %67 = load %struct.sort_mods*, %struct.sort_mods** %10, align 8
  %68 = getelementptr inbounds %struct.sort_mods, %struct.sort_mods* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %65
  %72 = load %struct.bwstring*, %struct.bwstring** %9, align 8
  %73 = icmp eq %struct.bwstring* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %76 = call %struct.bwstring* @bwsdup(%struct.bwstring* %75)
  store %struct.bwstring* %76, %struct.bwstring** %9, align 8
  br label %77

77:                                               ; preds = %74, %71
  %78 = load %struct.bwstring*, %struct.bwstring** %9, align 8
  %79 = call %struct.bwstring* @ignore_leading_blanks(%struct.bwstring* %78)
  store %struct.bwstring* %79, %struct.bwstring** %9, align 8
  br label %80

80:                                               ; preds = %77, %65
  %81 = load %struct.sort_mods*, %struct.sort_mods** %10, align 8
  %82 = getelementptr inbounds %struct.sort_mods, %struct.sort_mods* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %80
  %86 = load %struct.bwstring*, %struct.bwstring** %9, align 8
  %87 = icmp eq %struct.bwstring* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %90 = call %struct.bwstring* @bwsdup(%struct.bwstring* %89)
  store %struct.bwstring* %90, %struct.bwstring** %9, align 8
  br label %91

91:                                               ; preds = %88, %85
  %92 = load %struct.bwstring*, %struct.bwstring** %9, align 8
  %93 = call %struct.bwstring* @dictionary_order(%struct.bwstring* %92)
  store %struct.bwstring* %93, %struct.bwstring** %9, align 8
  br label %109

94:                                               ; preds = %80
  %95 = load %struct.sort_mods*, %struct.sort_mods** %10, align 8
  %96 = getelementptr inbounds %struct.sort_mods, %struct.sort_mods* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %94
  %100 = load %struct.bwstring*, %struct.bwstring** %9, align 8
  %101 = icmp eq %struct.bwstring* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %104 = call %struct.bwstring* @bwsdup(%struct.bwstring* %103)
  store %struct.bwstring* %104, %struct.bwstring** %9, align 8
  br label %105

105:                                              ; preds = %102, %99
  %106 = load %struct.bwstring*, %struct.bwstring** %9, align 8
  %107 = call %struct.bwstring* @ignore_nonprinting(%struct.bwstring* %106)
  store %struct.bwstring* %107, %struct.bwstring** %9, align 8
  br label %108

108:                                              ; preds = %105, %94
  br label %109

109:                                              ; preds = %108, %91
  %110 = load %struct.sort_mods*, %struct.sort_mods** %10, align 8
  %111 = getelementptr inbounds %struct.sort_mods, %struct.sort_mods* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %109
  %115 = load %struct.sort_mods*, %struct.sort_mods** %10, align 8
  %116 = getelementptr inbounds %struct.sort_mods, %struct.sort_mods* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %114, %109
  %120 = load %struct.bwstring*, %struct.bwstring** %9, align 8
  %121 = icmp eq %struct.bwstring* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %124 = call %struct.bwstring* @bwsdup(%struct.bwstring* %123)
  store %struct.bwstring* %124, %struct.bwstring** %9, align 8
  br label %125

125:                                              ; preds = %122, %119
  %126 = load %struct.bwstring*, %struct.bwstring** %9, align 8
  %127 = call %struct.bwstring* @ignore_case(%struct.bwstring* %126)
  store %struct.bwstring* %127, %struct.bwstring** %9, align 8
  br label %128

128:                                              ; preds = %125, %114
  %129 = load %struct.bwstring*, %struct.bwstring** %9, align 8
  %130 = icmp eq %struct.bwstring* %129, null
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = load %struct.keys_array*, %struct.keys_array** %4, align 8
  %133 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %134 = call i32 @set_key_on_keys_array(%struct.keys_array* %132, %struct.bwstring* %133, i64 0)
  br label %139

135:                                              ; preds = %128
  %136 = load %struct.keys_array*, %struct.keys_array** %4, align 8
  %137 = load %struct.bwstring*, %struct.bwstring** %9, align 8
  %138 = call i32 @set_key_on_keys_array(%struct.keys_array* %136, %struct.bwstring* %137, i64 0)
  br label %139

139:                                              ; preds = %135, %131
  br label %140

140:                                              ; preds = %139, %64
  ret i32 0
}

declare dso_local %struct.bwstring* @cut_field(%struct.bwstring*, %struct.key_specs*) #1

declare dso_local %struct.bwstring* @dictionary_order(%struct.bwstring*) #1

declare dso_local %struct.bwstring* @ignore_nonprinting(%struct.bwstring*) #1

declare dso_local %struct.bwstring* @ignore_case(%struct.bwstring*) #1

declare dso_local i32 @set_key_on_keys_array(%struct.keys_array*, %struct.bwstring*, i64) #1

declare dso_local %struct.bwstring* @bwsdup(%struct.bwstring*) #1

declare dso_local %struct.bwstring* @ignore_leading_blanks(%struct.bwstring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
