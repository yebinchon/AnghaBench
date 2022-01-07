; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hid.c_hid_switch_rid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hid.c_hid_switch_rid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_data = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.hid_item = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@MAXID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Out of RID entries, position is set to zero!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_data*, %struct.hid_item*, i64)* @hid_switch_rid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hid_switch_rid(%struct.hid_data* %0, %struct.hid_item* %1, i64 %2) #0 {
  %4 = alloca %struct.hid_data*, align 8
  %5 = alloca %struct.hid_item*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.hid_data* %0, %struct.hid_data** %4, align 8
  store %struct.hid_item* %1, %struct.hid_item** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.hid_item*, %struct.hid_item** %5, align 8
  %9 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %142

14:                                               ; preds = %3
  %15 = load %struct.hid_item*, %struct.hid_item** %5, align 8
  %16 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i64 0, i64* %7, align 8
  br label %53

20:                                               ; preds = %14
  store i64 1, i64* %7, align 8
  br label %21

21:                                               ; preds = %49, %20
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @MAXID, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %52

25:                                               ; preds = %21
  %26 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %27 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.hid_item*, %struct.hid_item** %5, align 8
  %34 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %52

38:                                               ; preds = %25
  %39 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %40 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %52

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %7, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %7, align 8
  br label %21

52:                                               ; preds = %47, %37, %21
  br label %53

53:                                               ; preds = %52, %19
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* @MAXID, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %77

57:                                               ; preds = %53
  %58 = load %struct.hid_item*, %struct.hid_item** %5, align 8
  %59 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %62 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i64 %60, i64* %66, align 8
  %67 = load %struct.hid_item*, %struct.hid_item** %5, align 8
  %68 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %72 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = load i64, i64* %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  store i32 %70, i32* %76, align 8
  br label %77

77:                                               ; preds = %57, %53
  %78 = load i64, i64* %6, align 8
  %79 = load %struct.hid_item*, %struct.hid_item** %5, align 8
  %80 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load i64, i64* %6, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  store i64 0, i64* %7, align 8
  br label %115

84:                                               ; preds = %77
  store i64 1, i64* %7, align 8
  br label %85

85:                                               ; preds = %111, %84
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* @MAXID, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %114

89:                                               ; preds = %85
  %90 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %91 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %90, i32 0, i32 0
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = load i64, i64* %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %6, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %89
  br label %114

100:                                              ; preds = %89
  %101 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %102 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %101, i32 0, i32 0
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = load i64, i64* %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %100
  br label %114

110:                                              ; preds = %100
  br label %111

111:                                              ; preds = %110
  %112 = load i64, i64* %7, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %7, align 8
  br label %85

114:                                              ; preds = %109, %99, %85
  br label %115

115:                                              ; preds = %114, %83
  %116 = load i64, i64* %7, align 8
  %117 = load i64, i64* @MAXID, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %137

119:                                              ; preds = %115
  %120 = load i64, i64* %6, align 8
  %121 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %122 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %121, i32 0, i32 0
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = load i64, i64* %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  store i64 %120, i64* %126, align 8
  %127 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %128 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %127, i32 0, i32 0
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %128, align 8
  %130 = load i64, i64* %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.hid_item*, %struct.hid_item** %5, align 8
  %135 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  store i32 %133, i32* %136, align 8
  br label %142

137:                                              ; preds = %115
  %138 = call i32 @DPRINTF(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %139 = load %struct.hid_item*, %struct.hid_item** %5, align 8
  %140 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  store i32 0, i32* %141, align 8
  br label %142

142:                                              ; preds = %13, %137, %119
  ret void
}

declare dso_local i32 @DPRINTF(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
