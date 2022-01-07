; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_syscalls.c_kern_syscall_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_syscalls.c_kern_syscall_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysent = type { i64, i32* }

@SY_THR_STATIC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NO_SYSCALL = common dso_local global i32 0, align 4
@SYS_MAXSYSCALL = common dso_local global i32 0, align 4
@lkmnosys = common dso_local global i64 0, align 8
@ENFILE = common dso_local global i32 0, align 4
@lkmressys = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i32 0, align 4
@SY_THR_ABSENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"dynamic syscall is not protected\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_syscall_register(%struct.sysent* %0, i32* %1, %struct.sysent* %2, %struct.sysent* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sysent*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.sysent*, align 8
  %10 = alloca %struct.sysent*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sysent* %0, %struct.sysent** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.sysent* %2, %struct.sysent** %9, align 8
  store %struct.sysent* %3, %struct.sysent** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* @SY_THR_STATIC, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %6, align 4
  br label %130

20:                                               ; preds = %5
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @NO_SYSCALL, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %54

25:                                               ; preds = %20
  store i32 1, i32* %12, align 4
  br label %26

26:                                               ; preds = %42, %25
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @SYS_MAXSYSCALL, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = load %struct.sysent*, %struct.sysent** %7, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.sysent, %struct.sysent* %31, i64 %33
  %35 = getelementptr inbounds %struct.sysent, %struct.sysent* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @lkmnosys, align 8
  %38 = inttoptr i64 %37 to i32*
  %39 = icmp eq i32* %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %45

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %12, align 4
  br label %26

45:                                               ; preds = %40, %26
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @SYS_MAXSYSCALL, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @ENFILE, align 4
  store i32 %50, i32* %6, align 4
  br label %130

51:                                               ; preds = %45
  %52 = load i32, i32* %12, align 4
  %53 = load i32*, i32** %8, align 8
  store i32 %52, i32* %53, align 4
  br label %91

54:                                               ; preds = %20
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %54
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @SYS_MAXSYSCALL, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %58, %54
  %64 = load i32, i32* @EINVAL, align 4
  store i32 %64, i32* %6, align 4
  br label %130

65:                                               ; preds = %58
  %66 = load %struct.sysent*, %struct.sysent** %7, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.sysent, %struct.sysent* %66, i64 %69
  %71 = getelementptr inbounds %struct.sysent, %struct.sysent* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* @lkmnosys, align 8
  %74 = inttoptr i64 %73 to i32*
  %75 = icmp ne i32* %72, %74
  br i1 %75, label %76, label %89

76:                                               ; preds = %65
  %77 = load %struct.sysent*, %struct.sysent** %7, align 8
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.sysent, %struct.sysent* %77, i64 %80
  %82 = getelementptr inbounds %struct.sysent, %struct.sysent* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* @lkmressys, align 8
  %85 = inttoptr i64 %84 to i32*
  %86 = icmp ne i32* %83, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %76
  %88 = load i32, i32* @EEXIST, align 4
  store i32 %88, i32* %6, align 4
  br label %130

89:                                               ; preds = %76, %65
  br label %90

90:                                               ; preds = %89
  br label %91

91:                                               ; preds = %90, %51
  %92 = load %struct.sysent*, %struct.sysent** %7, align 8
  %93 = load i32*, i32** %8, align 8
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.sysent, %struct.sysent* %92, i64 %95
  %97 = getelementptr inbounds %struct.sysent, %struct.sysent* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @SY_THR_ABSENT, align 8
  %100 = icmp eq i64 %98, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @KASSERT(i32 %101, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %103 = load %struct.sysent*, %struct.sysent** %10, align 8
  %104 = load %struct.sysent*, %struct.sysent** %7, align 8
  %105 = load i32*, i32** %8, align 8
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.sysent, %struct.sysent* %104, i64 %107
  %109 = bitcast %struct.sysent* %103 to i8*
  %110 = bitcast %struct.sysent* %108 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %109, i8* align 8 %110, i64 16, i1 false)
  %111 = load i64, i64* @SY_THR_ABSENT, align 8
  %112 = load %struct.sysent*, %struct.sysent** %9, align 8
  %113 = getelementptr inbounds %struct.sysent, %struct.sysent* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load %struct.sysent*, %struct.sysent** %7, align 8
  %115 = load i32*, i32** %8, align 8
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.sysent, %struct.sysent* %114, i64 %117
  %119 = load %struct.sysent*, %struct.sysent** %9, align 8
  %120 = bitcast %struct.sysent* %118 to i8*
  %121 = bitcast %struct.sysent* %119 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %120, i8* align 8 %121, i64 16, i1 false)
  %122 = load %struct.sysent*, %struct.sysent** %7, align 8
  %123 = load i32*, i32** %8, align 8
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.sysent, %struct.sysent* %122, i64 %125
  %127 = getelementptr inbounds %struct.sysent, %struct.sysent* %126, i32 0, i32 0
  %128 = load i32, i32* %11, align 4
  %129 = call i32 @atomic_store_rel_32(i64* %127, i32 %128)
  store i32 0, i32* %6, align 4
  br label %130

130:                                              ; preds = %91, %87, %63, %49, %18
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

declare dso_local i32 @KASSERT(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @atomic_store_rel_32(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
