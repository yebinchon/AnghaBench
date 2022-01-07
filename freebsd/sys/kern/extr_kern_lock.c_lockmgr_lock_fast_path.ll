; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_lock.c_lockmgr_lock_fast_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_lock.c_lockmgr_lock_fast_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.lock_object = type { i32 }
%struct.lock_class = type { i32 (%struct.lock_object*)* }

@panicstr = common dso_local global i32* null, align 8
@LK_TYPE_MASK = common dso_local global i32 0, align 4
@LOP_NEWORDER = common dso_local global i32 0, align 4
@LK_INTERLOCK = common dso_local global i32 0, align 4
@LK_NOSHARE = common dso_local global i32 0, align 4
@LOP_EXCLUSIVE = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@LK_UNLOCKED = common dso_local global i32 0, align 4
@LK_WMESG_DEFAULT = common dso_local global i32 0, align 4
@LK_PRIO_DEFAULT = common dso_local global i32 0, align 4
@LK_TIMO_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lockmgr_lock_fast_path(%struct.lock* %0, i32 %1, %struct.lock_object* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.lock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.lock_object*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.lock_class*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.lock* %0, %struct.lock** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.lock_object* %2, %struct.lock_object** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i32*, i32** @panicstr, align 8
  %18 = icmp ne i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i64 @__predict_false(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %165

23:                                               ; preds = %5
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @LK_TYPE_MASK, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %27 = load i32, i32* %15, align 4
  switch i32 %27, label %135 [
    i32 130, label %28
    i32 131, label %77
    i32 128, label %128
    i32 129, label %128
  ]

28:                                               ; preds = %23
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @LK_CAN_WITNESS(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %28
  %33 = load %struct.lock*, %struct.lock** %7, align 8
  %34 = getelementptr inbounds %struct.lock, %struct.lock* %33, i32 0, i32 1
  %35 = load i32, i32* @LOP_NEWORDER, align 4
  %36 = load i8*, i8** %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @LK_INTERLOCK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load %struct.lock_object*, %struct.lock_object** %9, align 8
  br label %45

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi %struct.lock_object* [ %43, %42 ], [ null, %44 ]
  %47 = call i32 @WITNESS_CHECKORDER(%struct.TYPE_2__* %34, i32 %35, i8* %36, i32 %37, %struct.lock_object* %46)
  br label %48

48:                                               ; preds = %45, %28
  %49 = load %struct.lock*, %struct.lock** %7, align 8
  %50 = getelementptr inbounds %struct.lock, %struct.lock* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @LK_NOSHARE, align 4
  %54 = and i32 %52, %53
  %55 = call i64 @__predict_false(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %136

58:                                               ; preds = %48
  %59 = load %struct.lock*, %struct.lock** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @lockmgr_slock_try(%struct.lock* %59, i64* %13, i32 %60, i32 1)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load %struct.lock*, %struct.lock** %7, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @lockmgr_note_shared_acquire(%struct.lock* %64, i32 0, i32 0, i8* %65, i32 %66, i32 %67)
  store i32 1, i32* %16, align 4
  br label %76

69:                                               ; preds = %58
  %70 = load %struct.lock*, %struct.lock** %7, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.lock_object*, %struct.lock_object** %9, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @lockmgr_slock_hard(%struct.lock* %70, i32 %71, %struct.lock_object* %72, i8* %73, i32 %74, i32* null)
  store i32 %75, i32* %6, align 4
  br label %165

76:                                               ; preds = %63
  br label %136

77:                                               ; preds = %23
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @LK_CAN_WITNESS(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %99

81:                                               ; preds = %77
  %82 = load %struct.lock*, %struct.lock** %7, align 8
  %83 = getelementptr inbounds %struct.lock, %struct.lock* %82, i32 0, i32 1
  %84 = load i32, i32* @LOP_NEWORDER, align 4
  %85 = load i32, i32* @LOP_EXCLUSIVE, align 4
  %86 = or i32 %84, %85
  %87 = load i8*, i8** %10, align 8
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @LK_INTERLOCK, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %81
  %94 = load %struct.lock_object*, %struct.lock_object** %9, align 8
  br label %96

95:                                               ; preds = %81
  br label %96

96:                                               ; preds = %95, %93
  %97 = phi %struct.lock_object* [ %94, %93 ], [ null, %95 ]
  %98 = call i32 @WITNESS_CHECKORDER(%struct.TYPE_2__* %83, i32 %86, i8* %87, i32 %88, %struct.lock_object* %97)
  br label %99

99:                                               ; preds = %96, %77
  %100 = load i32, i32* @curthread, align 4
  %101 = sext i32 %100 to i64
  store i64 %101, i64* %14, align 8
  %102 = load %struct.lock*, %struct.lock** %7, align 8
  %103 = getelementptr inbounds %struct.lock, %struct.lock* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @LK_UNLOCKED, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %120

107:                                              ; preds = %99
  %108 = load %struct.lock*, %struct.lock** %7, align 8
  %109 = getelementptr inbounds %struct.lock, %struct.lock* %108, i32 0, i32 0
  %110 = load i32, i32* @LK_UNLOCKED, align 4
  %111 = load i64, i64* %14, align 8
  %112 = call i32 @atomic_cmpset_acq_ptr(i32* %109, i32 %110, i64 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %107
  %115 = load %struct.lock*, %struct.lock** %7, align 8
  %116 = load i8*, i8** %10, align 8
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @lockmgr_note_exclusive_acquire(%struct.lock* %115, i32 0, i32 0, i8* %116, i32 %117, i32 %118)
  store i32 1, i32* %16, align 4
  br label %127

120:                                              ; preds = %107, %99
  %121 = load %struct.lock*, %struct.lock** %7, align 8
  %122 = load i32, i32* %8, align 4
  %123 = load %struct.lock_object*, %struct.lock_object** %9, align 8
  %124 = load i8*, i8** %10, align 8
  %125 = load i32, i32* %11, align 4
  %126 = call i32 @lockmgr_xlock_hard(%struct.lock* %121, i32 %122, %struct.lock_object* %123, i8* %124, i32 %125, i32* null)
  store i32 %126, i32* %6, align 4
  br label %165

127:                                              ; preds = %114
  br label %136

128:                                              ; preds = %23, %23
  %129 = load %struct.lock*, %struct.lock** %7, align 8
  %130 = load i32, i32* %8, align 4
  %131 = load %struct.lock_object*, %struct.lock_object** %9, align 8
  %132 = load i8*, i8** %10, align 8
  %133 = load i32, i32* %11, align 4
  %134 = call i32 @lockmgr_upgrade(%struct.lock* %129, i32 %130, %struct.lock_object* %131, i8* %132, i32 %133, i32* null)
  store i32 %134, i32* %6, align 4
  br label %165

135:                                              ; preds = %23
  br label %136

136:                                              ; preds = %135, %127, %76, %57
  %137 = load i32, i32* %16, align 4
  %138 = call i64 @__predict_true(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %155

140:                                              ; preds = %136
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* @LK_INTERLOCK, align 4
  %143 = and i32 %141, %142
  %144 = call i64 @__predict_false(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %140
  %147 = load %struct.lock_object*, %struct.lock_object** %9, align 8
  %148 = call %struct.lock_class* @LOCK_CLASS(%struct.lock_object* %147)
  store %struct.lock_class* %148, %struct.lock_class** %12, align 8
  %149 = load %struct.lock_class*, %struct.lock_class** %12, align 8
  %150 = getelementptr inbounds %struct.lock_class, %struct.lock_class* %149, i32 0, i32 0
  %151 = load i32 (%struct.lock_object*)*, i32 (%struct.lock_object*)** %150, align 8
  %152 = load %struct.lock_object*, %struct.lock_object** %9, align 8
  %153 = call i32 %151(%struct.lock_object* %152)
  br label %154

154:                                              ; preds = %146, %140
  store i32 0, i32* %6, align 4
  br label %165

155:                                              ; preds = %136
  %156 = load %struct.lock*, %struct.lock** %7, align 8
  %157 = load i32, i32* %8, align 4
  %158 = load %struct.lock_object*, %struct.lock_object** %9, align 8
  %159 = load i32, i32* @LK_WMESG_DEFAULT, align 4
  %160 = load i32, i32* @LK_PRIO_DEFAULT, align 4
  %161 = load i32, i32* @LK_TIMO_DEFAULT, align 4
  %162 = load i8*, i8** %10, align 8
  %163 = load i32, i32* %11, align 4
  %164 = call i32 @__lockmgr_args(%struct.lock* %156, i32 %157, %struct.lock_object* %158, i32 %159, i32 %160, i32 %161, i8* %162, i32 %163)
  store i32 %164, i32* %6, align 4
  br label %165

165:                                              ; preds = %155, %154, %128, %120, %69, %22
  %166 = load i32, i32* %6, align 4
  ret i32 %166
}

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @LK_CAN_WITNESS(i32) #1

declare dso_local i32 @WITNESS_CHECKORDER(%struct.TYPE_2__*, i32, i8*, i32, %struct.lock_object*) #1

declare dso_local i32 @lockmgr_slock_try(%struct.lock*, i64*, i32, i32) #1

declare dso_local i32 @lockmgr_note_shared_acquire(%struct.lock*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @lockmgr_slock_hard(%struct.lock*, i32, %struct.lock_object*, i8*, i32, i32*) #1

declare dso_local i32 @atomic_cmpset_acq_ptr(i32*, i32, i64) #1

declare dso_local i32 @lockmgr_note_exclusive_acquire(%struct.lock*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @lockmgr_xlock_hard(%struct.lock*, i32, %struct.lock_object*, i8*, i32, i32*) #1

declare dso_local i32 @lockmgr_upgrade(%struct.lock*, i32, %struct.lock_object*, i8*, i32, i32*) #1

declare dso_local i64 @__predict_true(i32) #1

declare dso_local %struct.lock_class* @LOCK_CLASS(%struct.lock_object*) #1

declare dso_local i32 @__lockmgr_args(%struct.lock*, i32, %struct.lock_object*, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
