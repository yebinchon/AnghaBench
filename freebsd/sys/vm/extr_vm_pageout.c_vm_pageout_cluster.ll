; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_pageout.c_vm_pageout_cluster.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_pageout.c_vm_pageout_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }

@vm_pageout_page_count = common dso_local global i32 0, align 4
@VM_PAGER_PUT_NOREUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*)* @vm_pageout_cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_pageout_cluster(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %14 = load i32, i32* @vm_pageout_page_count, align 4
  %15 = mul nsw i32 2, %14
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %4, align 8
  %18 = alloca %struct.TYPE_19__*, i64 %16, align 16
  store i64 %16, i64* %5, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  store %struct.TYPE_20__* %21, %struct.TYPE_20__** %3, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %23 = call i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_20__* %22)
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %9, align 4
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %28 = call i32 @vm_page_assert_xbusied(%struct.TYPE_19__* %27)
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  store %struct.TYPE_19__* %29, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_19__* %29, %struct.TYPE_19__** %7, align 8
  %30 = load i32, i32* @vm_pageout_page_count, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %18, i64 %31
  store %struct.TYPE_19__* %29, %struct.TYPE_19__** %32, align 8
  store i32 1, i32* %13, align 4
  %33 = load i32, i32* @vm_pageout_page_count, align 4
  store i32 %33, i32* %12, align 4
  store i32 1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %34

34:                                               ; preds = %187, %1
  br label %35

35:                                               ; preds = %110, %34
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @vm_pageout_page_count, align 4
  %41 = icmp slt i32 %39, %40
  br label %42

42:                                               ; preds = %38, %35
  %43 = phi i1 [ false, %35 ], [ %41, %38 ]
  br i1 %43, label %44, label %111

44:                                               ; preds = %42
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 0, i32* %10, align 4
  br label %111

49:                                               ; preds = %44
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %51 = call %struct.TYPE_19__* @vm_page_prev(%struct.TYPE_19__* %50)
  store %struct.TYPE_19__* %51, %struct.TYPE_19__** %6, align 8
  %52 = icmp eq %struct.TYPE_19__* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %55 = call i64 @vm_page_tryxbusy(%struct.TYPE_19__* %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53, %49
  store i32 0, i32* %10, align 4
  br label %111

58:                                               ; preds = %53
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %60 = call i64 @vm_page_wired(%struct.TYPE_19__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  store i32 0, i32* %10, align 4
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %64 = call i32 @vm_page_xunbusy(%struct.TYPE_19__* %63)
  br label %111

65:                                               ; preds = %58
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %67 = call i32 @vm_page_test_dirty(%struct.TYPE_19__* %66)
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  store i32 0, i32* %10, align 4
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %74 = call i32 @vm_page_xunbusy(%struct.TYPE_19__* %73)
  br label %111

75:                                               ; preds = %65
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %77 = call i32 @vm_page_lock(%struct.TYPE_19__* %76)
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %79 = call i32 @vm_page_in_laundry(%struct.TYPE_19__* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %83 = call i32 @vm_page_try_remove_write(%struct.TYPE_19__* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %81, %75
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %87 = call i32 @vm_page_unlock(%struct.TYPE_19__* %86)
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %89 = call i32 @vm_page_xunbusy(%struct.TYPE_19__* %88)
  store i32 0, i32* %10, align 4
  br label %111

90:                                               ; preds = %81
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %92 = call i32 @vm_page_unlock(%struct.TYPE_19__* %91)
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_19__* %93, %struct.TYPE_19__** %7, align 8
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %18, i64 %96
  store %struct.TYPE_19__* %93, %struct.TYPE_19__** %97, align 8
  %98 = load i32, i32* %13, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %10, align 4
  %104 = sub nsw i32 %103, 1
  %105 = sub nsw i32 %102, %104
  %106 = load i32, i32* @vm_pageout_page_count, align 4
  %107 = srem i32 %105, %106
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %90
  br label %111

110:                                              ; preds = %90
  br label %35

111:                                              ; preds = %109, %85, %72, %62, %57, %48, %42
  br label %112

112:                                              ; preds = %167, %111
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* @vm_pageout_page_count, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %112
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %117, %118
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp slt i32 %119, %122
  br label %124

124:                                              ; preds = %116, %112
  %125 = phi i1 [ false, %112 ], [ %123, %116 ]
  br i1 %125, label %126, label %180

126:                                              ; preds = %124
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %128 = call %struct.TYPE_19__* @vm_page_next(%struct.TYPE_19__* %127)
  store %struct.TYPE_19__* %128, %struct.TYPE_19__** %6, align 8
  %129 = icmp eq %struct.TYPE_19__* %128, null
  br i1 %129, label %134, label %130

130:                                              ; preds = %126
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %132 = call i64 @vm_page_tryxbusy(%struct.TYPE_19__* %131)
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %130, %126
  br label %180

135:                                              ; preds = %130
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %137 = call i64 @vm_page_wired(%struct.TYPE_19__* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %141 = call i32 @vm_page_xunbusy(%struct.TYPE_19__* %140)
  br label %180

142:                                              ; preds = %135
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %144 = call i32 @vm_page_test_dirty(%struct.TYPE_19__* %143)
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %142
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %151 = call i32 @vm_page_xunbusy(%struct.TYPE_19__* %150)
  br label %180

152:                                              ; preds = %142
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %154 = call i32 @vm_page_lock(%struct.TYPE_19__* %153)
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %156 = call i32 @vm_page_in_laundry(%struct.TYPE_19__* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %152
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %160 = call i32 @vm_page_try_remove_write(%struct.TYPE_19__* %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %167, label %162

162:                                              ; preds = %158, %152
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %164 = call i32 @vm_page_unlock(%struct.TYPE_19__* %163)
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %166 = call i32 @vm_page_xunbusy(%struct.TYPE_19__* %165)
  br label %180

167:                                              ; preds = %158
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %169 = call i32 @vm_page_unlock(%struct.TYPE_19__* %168)
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_19__* %170, %struct.TYPE_19__** %8, align 8
  %171 = load i32, i32* %12, align 4
  %172 = load i32, i32* %13, align 4
  %173 = add nsw i32 %171, %172
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %18, i64 %174
  store %struct.TYPE_19__* %170, %struct.TYPE_19__** %175, align 8
  %176 = load i32, i32* %13, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %13, align 4
  %178 = load i32, i32* %11, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %11, align 4
  br label %112

180:                                              ; preds = %162, %149, %139, %134, %124
  %181 = load i32, i32* %10, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %180
  %184 = load i32, i32* %13, align 4
  %185 = load i32, i32* @vm_pageout_page_count, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %183
  br label %34

188:                                              ; preds = %183, %180
  %189 = load i32, i32* %12, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %18, i64 %190
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* @VM_PAGER_PUT_NOREUSE, align 4
  %194 = call i32 @vm_pageout_flush(%struct.TYPE_19__** %191, i32 %192, i32 %193, i32 0, i32* null, i32* null)
  %195 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %195)
  ret i32 %194
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_20__*) #2

declare dso_local i32 @vm_page_assert_xbusied(%struct.TYPE_19__*) #2

declare dso_local %struct.TYPE_19__* @vm_page_prev(%struct.TYPE_19__*) #2

declare dso_local i64 @vm_page_tryxbusy(%struct.TYPE_19__*) #2

declare dso_local i64 @vm_page_wired(%struct.TYPE_19__*) #2

declare dso_local i32 @vm_page_xunbusy(%struct.TYPE_19__*) #2

declare dso_local i32 @vm_page_test_dirty(%struct.TYPE_19__*) #2

declare dso_local i32 @vm_page_lock(%struct.TYPE_19__*) #2

declare dso_local i32 @vm_page_in_laundry(%struct.TYPE_19__*) #2

declare dso_local i32 @vm_page_try_remove_write(%struct.TYPE_19__*) #2

declare dso_local i32 @vm_page_unlock(%struct.TYPE_19__*) #2

declare dso_local %struct.TYPE_19__* @vm_page_next(%struct.TYPE_19__*) #2

declare dso_local i32 @vm_pageout_flush(%struct.TYPE_19__**, i32, i32, i32, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
