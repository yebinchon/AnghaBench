; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_umem_odp.c_ib_umem_odp_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_umem_odp.c_ib_umem_odp_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ucontext = type { i64, i32, i32, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.ib_umem = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i8*, i8*, i32, i32, i32, i32, %struct.ib_umem* }
%struct.mm_struct = type { i32 }

@current = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ib_umem_notifiers = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to register mmu_notifier %d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_umem_odp_get(%struct.ib_ucontext* %0, %struct.ib_umem* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_ucontext*, align 8
  %5 = alloca %struct.ib_umem*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.mm_struct*, align 8
  store %struct.ib_ucontext* %0, %struct.ib_ucontext** %4, align 8
  store %struct.ib_umem* %1, %struct.ib_umem** %5, align 8
  %9 = load i32, i32* @current, align 4
  %10 = call %struct.mm_struct* @get_task_mm(i32 %9)
  store %struct.mm_struct* %10, %struct.mm_struct** %8, align 8
  %11 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %12 = icmp ne %struct.mm_struct* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %213

16:                                               ; preds = %2
  %17 = call i32 (...) @rcu_read_lock()
  %18 = load i32, i32* @current, align 4
  %19 = call i32 @task_pid_group_leader(i32 %18)
  %20 = call i64 @get_pid(i32 %19)
  store i64 %20, i64* %7, align 8
  %21 = call i32 (...) @rcu_read_unlock()
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @put_pid(i64 %22)
  %24 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %25 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %16
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %209

32:                                               ; preds = %16
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.TYPE_5__* @kzalloc(i32 48, i32 %33)
  %35 = load %struct.ib_umem*, %struct.ib_umem** %5, align 8
  %36 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %35, i32 0, i32 0
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %36, align 8
  %37 = load %struct.ib_umem*, %struct.ib_umem** %5, align 8
  %38 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = icmp ne %struct.TYPE_5__* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %32
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %209

44:                                               ; preds = %32
  %45 = load %struct.ib_umem*, %struct.ib_umem** %5, align 8
  %46 = load %struct.ib_umem*, %struct.ib_umem** %5, align 8
  %47 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 7
  store %struct.ib_umem* %45, %struct.ib_umem** %49, align 8
  %50 = load %struct.ib_umem*, %struct.ib_umem** %5, align 8
  %51 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 6
  %54 = call i32 @mutex_init(i32* %53)
  %55 = load %struct.ib_umem*, %struct.ib_umem** %5, align 8
  %56 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 5
  %59 = call i32 @init_completion(i32* %58)
  %60 = load %struct.ib_umem*, %struct.ib_umem** %5, align 8
  %61 = call i32 @ib_umem_num_pages(%struct.ib_umem* %60)
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 1
  %64 = trunc i64 %63 to i32
  %65 = call i8* @vzalloc(i32 %64)
  %66 = load %struct.ib_umem*, %struct.ib_umem** %5, align 8
  %67 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  store i8* %65, i8** %69, align 8
  %70 = load %struct.ib_umem*, %struct.ib_umem** %5, align 8
  %71 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %44
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %6, align 4
  br label %204

79:                                               ; preds = %44
  %80 = load %struct.ib_umem*, %struct.ib_umem** %5, align 8
  %81 = call i32 @ib_umem_num_pages(%struct.ib_umem* %80)
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 1
  %84 = trunc i64 %83 to i32
  %85 = call i8* @vzalloc(i32 %84)
  %86 = load %struct.ib_umem*, %struct.ib_umem** %5, align 8
  %87 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %86, i32 0, i32 0
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  store i8* %85, i8** %89, align 8
  %90 = load %struct.ib_umem*, %struct.ib_umem** %5, align 8
  %91 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %90, i32 0, i32 0
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  %94 = load i8*, i8** %93, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %79
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %6, align 4
  br label %197

99:                                               ; preds = %79
  %100 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %101 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %100, i32 0, i32 2
  %102 = call i32 @down_write(i32* %101)
  %103 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %104 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 8
  %107 = load %struct.ib_umem*, %struct.ib_umem** %5, align 8
  %108 = call i64 @ib_umem_start(%struct.ib_umem* %107)
  %109 = load %struct.ib_umem*, %struct.ib_umem** %5, align 8
  %110 = call i64 @ib_umem_end(%struct.ib_umem* %109)
  %111 = icmp ne i64 %108, %110
  %112 = zext i1 %111 to i32
  %113 = call i64 @likely(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %99
  %116 = load %struct.ib_umem*, %struct.ib_umem** %5, align 8
  %117 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %116, i32 0, i32 0
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 4
  %120 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %121 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %120, i32 0, i32 6
  %122 = call i32 @rbt_ib_umem_insert(i32* %119, i32* %121)
  br label %123

123:                                              ; preds = %115, %99
  %124 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %125 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %124, i32 0, i32 4
  %126 = call i32 @atomic_read(i32* %125)
  %127 = icmp ne i32 %126, 0
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  %130 = call i64 @likely(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %137, label %132

132:                                              ; preds = %123
  %133 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %134 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = icmp eq i32 %135, 1
  br i1 %136, label %137, label %142

137:                                              ; preds = %132, %123
  %138 = load %struct.ib_umem*, %struct.ib_umem** %5, align 8
  %139 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %138, i32 0, i32 0
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  store i32 1, i32* %141, align 8
  br label %150

142:                                              ; preds = %132
  %143 = load %struct.ib_umem*, %struct.ib_umem** %5, align 8
  %144 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %143, i32 0, i32 0
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 3
  %147 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %148 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %147, i32 0, i32 5
  %149 = call i32 @list_add(i32* %146, i32* %148)
  br label %150

150:                                              ; preds = %142, %137
  %151 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %152 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %151, i32 0, i32 2
  %153 = call i32 @downgrade_write(i32* %152)
  %154 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %155 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = icmp eq i32 %156, 1
  br i1 %157, label %158, label %181

158:                                              ; preds = %150
  %159 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %160 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %159, i32 0, i32 4
  %161 = call i32 @atomic_set(i32* %160, i32 0)
  %162 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %163 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 1
  %165 = call i32 @INIT_HLIST_NODE(i32* %164)
  %166 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %167 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  store i32* @ib_umem_notifiers, i32** %168, align 8
  %169 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %170 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %169, i32 0, i32 3
  %171 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %172 = call i32 @mmu_notifier_register(%struct.TYPE_4__* %170, %struct.mm_struct* %171)
  store i32 %172, i32* %6, align 4
  %173 = load i32, i32* %6, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %158
  %176 = load i32, i32* %6, align 4
  %177 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %176)
  %178 = load i32, i32* @EBUSY, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %6, align 4
  br label %187

180:                                              ; preds = %158
  br label %181

181:                                              ; preds = %180, %150
  %182 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %183 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %182, i32 0, i32 2
  %184 = call i32 @up_read(i32* %183)
  %185 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %186 = call i32 @mmput(%struct.mm_struct* %185)
  store i32 0, i32* %3, align 4
  br label %213

187:                                              ; preds = %175
  %188 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %189 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %188, i32 0, i32 2
  %190 = call i32 @up_read(i32* %189)
  %191 = load %struct.ib_umem*, %struct.ib_umem** %5, align 8
  %192 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %191, i32 0, i32 0
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 2
  %195 = load i8*, i8** %194, align 8
  %196 = call i32 @vfree(i8* %195)
  br label %197

197:                                              ; preds = %187, %96
  %198 = load %struct.ib_umem*, %struct.ib_umem** %5, align 8
  %199 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %198, i32 0, i32 0
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 1
  %202 = load i8*, i8** %201, align 8
  %203 = call i32 @vfree(i8* %202)
  br label %204

204:                                              ; preds = %197, %76
  %205 = load %struct.ib_umem*, %struct.ib_umem** %5, align 8
  %206 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %205, i32 0, i32 0
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %206, align 8
  %208 = call i32 @kfree(%struct.TYPE_5__* %207)
  br label %209

209:                                              ; preds = %204, %41, %29
  %210 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %211 = call i32 @mmput(%struct.mm_struct* %210)
  %212 = load i32, i32* %6, align 4
  store i32 %212, i32* %3, align 4
  br label %213

213:                                              ; preds = %209, %181, %13
  %214 = load i32, i32* %3, align 4
  ret i32 %214
}

declare dso_local %struct.mm_struct* @get_task_mm(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @get_pid(i32) #1

declare dso_local i32 @task_pid_group_leader(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @put_pid(i64) #1

declare dso_local %struct.TYPE_5__* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i8* @vzalloc(i32) #1

declare dso_local i32 @ib_umem_num_pages(%struct.ib_umem*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @ib_umem_start(%struct.ib_umem*) #1

declare dso_local i64 @ib_umem_end(%struct.ib_umem*) #1

declare dso_local i32 @rbt_ib_umem_insert(i32*, i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @downgrade_write(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @mmu_notifier_register(%struct.TYPE_4__*, %struct.mm_struct*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @mmput(%struct.mm_struct*) #1

declare dso_local i32 @vfree(i8*) #1

declare dso_local i32 @kfree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
