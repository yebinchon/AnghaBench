; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_pipe.c_pipespace_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_pipe.c_pipespace_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }
%struct.pipe = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32* }

@pipespace_new.curfail = internal global i32 0, align 4
@pipespace_new.lastfail = internal global %struct.timeval zeroinitializer, align 4
@.str = private unnamed_addr constant [29 x i8] c"pipespace: pipe mutex locked\00", align 1
@PIPE_DIRECTW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"pipespace: resize of direct writes not allowed\00", align 1
@pipe_map = common dso_local global i32 0, align 4
@VMFS_ANY_SPACE = common dso_local global i32 0, align 4
@VM_PROT_RW = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@SMALL_PIPE_SIZE = common dso_local global i32 0, align 4
@pipefragretry = common dso_local global i32 0, align 4
@pipeallocfail = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"kern.ipc.maxpipekva exceeded; see tuning(7)\0A\00", align 1
@piperesizefail = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@amountpipekva = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipe*, i32)* @pipespace_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipespace_new(%struct.pipe* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pipe*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pipe* %0, %struct.pipe** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.pipe*, %struct.pipe** %4, align 8
  %11 = call i32 @PIPE_MTX(%struct.pipe* %10)
  %12 = call i32 @mtx_owned(i32 %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @KASSERT(i32 %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.pipe*, %struct.pipe** %4, align 8
  %18 = getelementptr inbounds %struct.pipe, %struct.pipe* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @PIPE_DIRECTW, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @KASSERT(i32 %24, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %62, %2
  %27 = load %struct.pipe*, %struct.pipe** %4, align 8
  %28 = getelementptr inbounds %struct.pipe, %struct.pipe* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %34, %26
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @round_page(i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* @pipe_map, align 4
  %40 = call i64 @vm_map_min(i32 %39)
  %41 = inttoptr i64 %40 to i32*
  store i32* %41, i32** %6, align 8
  %42 = load i32, i32* @pipe_map, align 4
  %43 = bitcast i32** %6 to i32*
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @VMFS_ANY_SPACE, align 4
  %46 = load i32, i32* @VM_PROT_RW, align 4
  %47 = load i32, i32* @VM_PROT_RW, align 4
  %48 = call i32 @vm_map_find(i32 %42, i32* null, i32 0, i32* %43, i32 %44, i32 0, i32 %45, i32 %46, i32 %47, i32 0)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @KERN_SUCCESS, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %85

52:                                               ; preds = %36
  %53 = load %struct.pipe*, %struct.pipe** %4, align 8
  %54 = getelementptr inbounds %struct.pipe, %struct.pipe* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 4
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %52
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @SMALL_PIPE_SIZE, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32, i32* @SMALL_PIPE_SIZE, align 4
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* @pipefragretry, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* @pipefragretry, align 4
  br label %26

66:                                               ; preds = %58, %52
  %67 = load %struct.pipe*, %struct.pipe** %4, align 8
  %68 = getelementptr inbounds %struct.pipe, %struct.pipe* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 4
  %70 = load i32*, i32** %69, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %66
  %73 = load i32, i32* @pipeallocfail, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* @pipeallocfail, align 4
  %75 = call i64 @ppsratecheck(%struct.timeval* @pipespace_new.lastfail, i32* @pipespace_new.curfail, i32 1)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %72
  br label %83

80:                                               ; preds = %66
  %81 = load i32, i32* @piperesizefail, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* @piperesizefail, align 4
  br label %83

83:                                               ; preds = %80, %79
  %84 = load i32, i32* @ENOMEM, align 4
  store i32 %84, i32* %3, align 4
  br label %182

85:                                               ; preds = %36
  %86 = load i32, i32* %8, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %155

88:                                               ; preds = %85
  %89 = load %struct.pipe*, %struct.pipe** %4, align 8
  %90 = getelementptr inbounds %struct.pipe, %struct.pipe* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.pipe*, %struct.pipe** %4, align 8
  %94 = getelementptr inbounds %struct.pipe, %struct.pipe* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = icmp sle i32 %92, %96
  br i1 %97, label %98, label %140

98:                                               ; preds = %88
  %99 = load %struct.pipe*, %struct.pipe** %4, align 8
  %100 = getelementptr inbounds %struct.pipe, %struct.pipe* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.pipe*, %struct.pipe** %4, align 8
  %104 = getelementptr inbounds %struct.pipe, %struct.pipe* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = sub nsw i32 %102, %106
  store i32 %107, i32* %9, align 4
  %108 = load %struct.pipe*, %struct.pipe** %4, align 8
  %109 = getelementptr inbounds %struct.pipe, %struct.pipe* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 4
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.pipe*, %struct.pipe** %4, align 8
  %113 = getelementptr inbounds %struct.pipe, %struct.pipe* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %111, i64 %116
  %118 = load i32*, i32** %6, align 8
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @bcopy(i32* %117, i32* %118, i32 %119)
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %9, align 4
  %123 = sub nsw i32 %121, %122
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %139

125:                                              ; preds = %98
  %126 = load %struct.pipe*, %struct.pipe** %4, align 8
  %127 = getelementptr inbounds %struct.pipe, %struct.pipe* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 4
  %129 = load i32*, i32** %128, align 8
  %130 = load i32*, i32** %6, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load %struct.pipe*, %struct.pipe** %4, align 8
  %135 = getelementptr inbounds %struct.pipe, %struct.pipe* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @bcopy(i32* %129, i32* %133, i32 %137)
  br label %139

139:                                              ; preds = %125, %98
  br label %154

140:                                              ; preds = %88
  %141 = load %struct.pipe*, %struct.pipe** %4, align 8
  %142 = getelementptr inbounds %struct.pipe, %struct.pipe* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 4
  %144 = load i32*, i32** %143, align 8
  %145 = load %struct.pipe*, %struct.pipe** %4, align 8
  %146 = getelementptr inbounds %struct.pipe, %struct.pipe* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %144, i64 %149
  %151 = load i32*, i32** %6, align 8
  %152 = load i32, i32* %8, align 4
  %153 = call i32 @bcopy(i32* %150, i32* %151, i32 %152)
  br label %154

154:                                              ; preds = %140, %139
  br label %155

155:                                              ; preds = %154, %85
  %156 = load %struct.pipe*, %struct.pipe** %4, align 8
  %157 = call i32 @pipe_free_kmem(%struct.pipe* %156)
  %158 = load i32*, i32** %6, align 8
  %159 = load %struct.pipe*, %struct.pipe** %4, align 8
  %160 = getelementptr inbounds %struct.pipe, %struct.pipe* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 4
  store i32* %158, i32** %161, align 8
  %162 = load i32, i32* %5, align 4
  %163 = load %struct.pipe*, %struct.pipe** %4, align 8
  %164 = getelementptr inbounds %struct.pipe, %struct.pipe* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 3
  store i32 %162, i32* %165, align 4
  %166 = load i32, i32* %8, align 4
  %167 = load %struct.pipe*, %struct.pipe** %4, align 8
  %168 = getelementptr inbounds %struct.pipe, %struct.pipe* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 1
  store i32 %166, i32* %169, align 4
  %170 = load %struct.pipe*, %struct.pipe** %4, align 8
  %171 = getelementptr inbounds %struct.pipe, %struct.pipe* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 2
  store i32 0, i32* %172, align 8
  %173 = load i32, i32* %8, align 4
  %174 = load %struct.pipe*, %struct.pipe** %4, align 8
  %175 = getelementptr inbounds %struct.pipe, %struct.pipe* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  store i32 %173, i32* %176, align 8
  %177 = load %struct.pipe*, %struct.pipe** %4, align 8
  %178 = getelementptr inbounds %struct.pipe, %struct.pipe* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @atomic_add_long(i32* @amountpipekva, i32 %180)
  store i32 0, i32* %3, align 4
  br label %182

182:                                              ; preds = %155, %83
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_owned(i32) #1

declare dso_local i32 @PIPE_MTX(%struct.pipe*) #1

declare dso_local i32 @round_page(i32) #1

declare dso_local i64 @vm_map_min(i32) #1

declare dso_local i32 @vm_map_find(i32, i32*, i32, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @ppsratecheck(%struct.timeval*, i32*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @pipe_free_kmem(%struct.pipe*) #1

declare dso_local i32 @atomic_add_long(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
