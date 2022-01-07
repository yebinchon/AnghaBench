; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/linux/extr_linux_machdep.c_linux_modify_ldt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/linux/extr_linux_machdep.c_linux_modify_ldt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32* }
%struct.linux_modify_ldt_args = type { i32, i32, %union.descriptor* }
%union.descriptor = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.i386_ldt_args = type { i32, %union.descriptor*, i32 }
%struct.l_descriptor = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SDT_MEMRO = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"modify_ldt needs kernel option USER_LDT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_modify_ldt(%struct.thread* %0, %struct.linux_modify_ldt_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_modify_ldt_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i386_ldt_args, align 8
  %8 = alloca %struct.l_descriptor, align 4
  %9 = alloca %union.descriptor, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_modify_ldt_args* %1, %struct.linux_modify_ldt_args** %5, align 8
  %12 = load %struct.linux_modify_ldt_args*, %struct.linux_modify_ldt_args** %5, align 8
  %13 = getelementptr inbounds %struct.linux_modify_ldt_args, %struct.linux_modify_ldt_args* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %152 [
    i32 0, label %15
    i32 2, label %38
    i32 1, label %76
    i32 17, label %76
  ]

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %7, i32 0, i32 2
  store i32 0, i32* %16, align 8
  %17 = load %struct.linux_modify_ldt_args*, %struct.linux_modify_ldt_args** %5, align 8
  %18 = getelementptr inbounds %struct.linux_modify_ldt_args, %struct.linux_modify_ldt_args* %17, i32 0, i32 2
  %19 = load %union.descriptor*, %union.descriptor** %18, align 8
  %20 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %7, i32 0, i32 1
  store %union.descriptor* %19, %union.descriptor** %20, align 8
  %21 = load %struct.linux_modify_ldt_args*, %struct.linux_modify_ldt_args** %5, align 8
  %22 = getelementptr inbounds %struct.linux_modify_ldt_args, %struct.linux_modify_ldt_args* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = udiv i64 %24, 40
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %7, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  %28 = load %struct.thread*, %struct.thread** %4, align 8
  %29 = call i32 @i386_get_ldt(%struct.thread* %28, %struct.i386_ldt_args* %7)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.thread*, %struct.thread** %4, align 8
  %31 = getelementptr inbounds %struct.thread, %struct.thread* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 40
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 4
  br label %154

38:                                               ; preds = %2
  store i32 20, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.linux_modify_ldt_args*, %struct.linux_modify_ldt_args** %5, align 8
  %41 = getelementptr inbounds %struct.linux_modify_ldt_args, %struct.linux_modify_ldt_args* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %39, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.linux_modify_ldt_args*, %struct.linux_modify_ldt_args** %5, align 8
  %46 = getelementptr inbounds %struct.linux_modify_ldt_args, %struct.linux_modify_ldt_args* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %44, %38
  store i32 0, i32* %6, align 4
  store i32 0, i32* %11, align 4
  br label %49

49:                                               ; preds = %67, %48
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* %6, align 4
  %55 = icmp eq i32 %54, 0
  br label %56

56:                                               ; preds = %53, %49
  %57 = phi i1 [ false, %49 ], [ %55, %53 ]
  br i1 %57, label %58, label %70

58:                                               ; preds = %56
  %59 = load %struct.linux_modify_ldt_args*, %struct.linux_modify_ldt_args** %5, align 8
  %60 = getelementptr inbounds %struct.linux_modify_ldt_args, %struct.linux_modify_ldt_args* %59, i32 0, i32 2
  %61 = load %union.descriptor*, %union.descriptor** %60, align 8
  %62 = bitcast %union.descriptor* %61 to i8*
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = call i32 @subyte(i8* %65, i32 0)
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %58
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %49

70:                                               ; preds = %56
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.thread*, %struct.thread** %4, align 8
  %73 = getelementptr inbounds %struct.thread, %struct.thread* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  store i32 %71, i32* %75, align 4
  br label %154

76:                                               ; preds = %2, %2
  %77 = load %struct.linux_modify_ldt_args*, %struct.linux_modify_ldt_args** %5, align 8
  %78 = getelementptr inbounds %struct.linux_modify_ldt_args, %struct.linux_modify_ldt_args* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = icmp ne i64 %80, 32
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i32, i32* @EINVAL, align 4
  store i32 %83, i32* %3, align 4
  br label %164

84:                                               ; preds = %76
  %85 = load %struct.linux_modify_ldt_args*, %struct.linux_modify_ldt_args** %5, align 8
  %86 = getelementptr inbounds %struct.linux_modify_ldt_args, %struct.linux_modify_ldt_args* %85, i32 0, i32 2
  %87 = load %union.descriptor*, %union.descriptor** %86, align 8
  %88 = call i32 @copyin(%union.descriptor* %87, %struct.l_descriptor* %8, i32 32)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %3, align 4
  br label %164

93:                                               ; preds = %84
  %94 = getelementptr inbounds %struct.l_descriptor, %struct.l_descriptor* %8, i32 0, i32 7
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %7, i32 0, i32 2
  store i32 %95, i32* %96, align 8
  %97 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %7, i32 0, i32 1
  store %union.descriptor* %9, %union.descriptor** %97, align 8
  %98 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %7, i32 0, i32 0
  store i32 1, i32* %98, align 8
  %99 = getelementptr inbounds %struct.l_descriptor, %struct.l_descriptor* %8, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, 65535
  %102 = bitcast %union.descriptor* %9 to %struct.TYPE_2__*
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  %104 = getelementptr inbounds %struct.l_descriptor, %struct.l_descriptor* %8, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, 983040
  %107 = ashr i32 %106, 16
  %108 = bitcast %union.descriptor* %9 to %struct.TYPE_2__*
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = getelementptr inbounds %struct.l_descriptor, %struct.l_descriptor* %8, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, 16777215
  %113 = bitcast %union.descriptor* %9 to %struct.TYPE_2__*
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 4
  %115 = getelementptr inbounds %struct.l_descriptor, %struct.l_descriptor* %8, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, -16777216
  %118 = lshr i32 %117, 24
  %119 = bitcast %union.descriptor* %9 to %struct.TYPE_2__*
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* @SDT_MEMRO, align 4
  %122 = getelementptr inbounds %struct.l_descriptor, %struct.l_descriptor* %8, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = xor i32 %123, 1
  %125 = shl i32 %124, 1
  %126 = or i32 %121, %125
  %127 = getelementptr inbounds %struct.l_descriptor, %struct.l_descriptor* %8, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = shl i32 %128, 2
  %130 = or i32 %126, %129
  %131 = bitcast %union.descriptor* %9 to %struct.TYPE_2__*
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 4
  store i32 %130, i32* %132, align 4
  %133 = bitcast %union.descriptor* %9 to %struct.TYPE_2__*
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 5
  store i32 3, i32* %134, align 4
  %135 = getelementptr inbounds %struct.l_descriptor, %struct.l_descriptor* %8, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = xor i32 %136, 1
  %138 = bitcast %union.descriptor* %9 to %struct.TYPE_2__*
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 6
  store i32 %137, i32* %139, align 4
  %140 = bitcast %union.descriptor* %9 to %struct.TYPE_2__*
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 9
  store i32 0, i32* %141, align 4
  %142 = getelementptr inbounds %struct.l_descriptor, %struct.l_descriptor* %8, i32 0, i32 6
  %143 = load i32, i32* %142, align 4
  %144 = bitcast %union.descriptor* %9 to %struct.TYPE_2__*
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 8
  store i32 %143, i32* %145, align 4
  %146 = getelementptr inbounds %struct.l_descriptor, %struct.l_descriptor* %8, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = bitcast %union.descriptor* %9 to %struct.TYPE_2__*
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 7
  store i32 %147, i32* %149, align 4
  %150 = load %struct.thread*, %struct.thread** %4, align 8
  %151 = call i32 @i386_set_ldt(%struct.thread* %150, %struct.i386_ldt_args* %7, %union.descriptor* %9)
  store i32 %151, i32* %6, align 4
  br label %154

152:                                              ; preds = %2
  %153 = load i32, i32* @ENOSYS, align 4
  store i32 %153, i32* %6, align 4
  br label %154

154:                                              ; preds = %152, %93, %70, %15
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* @EOPNOTSUPP, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %154
  %159 = load %struct.thread*, %struct.thread** %4, align 8
  %160 = call i32 @linux_msg(%struct.thread* %159, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %161 = load i32, i32* @ENOSYS, align 4
  store i32 %161, i32* %6, align 4
  br label %162

162:                                              ; preds = %158, %154
  %163 = load i32, i32* %6, align 4
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %162, %91, %82
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i32 @i386_get_ldt(%struct.thread*, %struct.i386_ldt_args*) #1

declare dso_local i32 @subyte(i8*, i32) #1

declare dso_local i32 @copyin(%union.descriptor*, %struct.l_descriptor*, i32) #1

declare dso_local i32 @i386_set_ldt(%struct.thread*, %struct.i386_ldt_args*, %union.descriptor*) #1

declare dso_local i32 @linux_msg(%struct.thread*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
