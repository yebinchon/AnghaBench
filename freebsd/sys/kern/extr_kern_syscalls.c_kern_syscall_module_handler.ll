; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_syscalls.c_kern_syscall_module_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_syscalls.c_kern_syscall_module_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysent = type { i32 }
%struct.module = type { i32 }
%struct.syscall_module_data = type { i32 (%struct.module.0*, i32, i32)*, i32, i32, i32*, i32, i32 }
%struct.module.0 = type opaque
%struct.TYPE_3__ = type { i32 }

@MOD_XLOCK = common dso_local global i32 0, align 4
@MOD_XUNLOCK = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_syscall_module_handler(%struct.sysent* %0, %struct.module* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sysent*, align 8
  %7 = alloca %struct.module*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.syscall_module_data*, align 8
  %11 = alloca %struct.TYPE_3__, align 4
  %12 = alloca i32, align 4
  store %struct.sysent* %0, %struct.sysent** %6, align 8
  store %struct.module* %1, %struct.module** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = bitcast i8* %13 to %struct.syscall_module_data*
  store %struct.syscall_module_data* %14, %struct.syscall_module_data** %10, align 8
  %15 = load i32, i32* %8, align 4
  switch i32 %15, label %100 [
    i32 129, label %16
    i32 128, label %63
  ]

16:                                               ; preds = %4
  %17 = load %struct.sysent*, %struct.sysent** %6, align 8
  %18 = load %struct.syscall_module_data*, %struct.syscall_module_data** %10, align 8
  %19 = getelementptr inbounds %struct.syscall_module_data, %struct.syscall_module_data* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.syscall_module_data*, %struct.syscall_module_data** %10, align 8
  %22 = getelementptr inbounds %struct.syscall_module_data, %struct.syscall_module_data* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.syscall_module_data*, %struct.syscall_module_data** %10, align 8
  %25 = getelementptr inbounds %struct.syscall_module_data, %struct.syscall_module_data* %24, i32 0, i32 2
  %26 = load %struct.syscall_module_data*, %struct.syscall_module_data** %10, align 8
  %27 = getelementptr inbounds %struct.syscall_module_data, %struct.syscall_module_data* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @kern_syscall_register(%struct.sysent* %17, i32* %20, i32 %23, i32* %25, i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %16
  %33 = load %struct.syscall_module_data*, %struct.syscall_module_data** %10, align 8
  %34 = getelementptr inbounds %struct.syscall_module_data, %struct.syscall_module_data* %33, i32 0, i32 3
  store i32* null, i32** %34, align 8
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %5, align 4
  br label %118

36:                                               ; preds = %16
  %37 = load %struct.syscall_module_data*, %struct.syscall_module_data** %10, align 8
  %38 = getelementptr inbounds %struct.syscall_module_data, %struct.syscall_module_data* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @MOD_XLOCK, align 4
  %43 = load %struct.module*, %struct.module** %7, align 8
  %44 = call i32 @module_setspecific(%struct.module* %43, %struct.TYPE_3__* %11)
  %45 = load i32, i32* @MOD_XUNLOCK, align 4
  %46 = load %struct.syscall_module_data*, %struct.syscall_module_data** %10, align 8
  %47 = getelementptr inbounds %struct.syscall_module_data, %struct.syscall_module_data* %46, i32 0, i32 0
  %48 = load i32 (%struct.module.0*, i32, i32)*, i32 (%struct.module.0*, i32, i32)** %47, align 8
  %49 = icmp ne i32 (%struct.module.0*, i32, i32)* %48, null
  br i1 %49, label %50, label %61

50:                                               ; preds = %36
  %51 = load %struct.syscall_module_data*, %struct.syscall_module_data** %10, align 8
  %52 = getelementptr inbounds %struct.syscall_module_data, %struct.syscall_module_data* %51, i32 0, i32 0
  %53 = load i32 (%struct.module.0*, i32, i32)*, i32 (%struct.module.0*, i32, i32)** %52, align 8
  %54 = load %struct.module*, %struct.module** %7, align 8
  %55 = bitcast %struct.module* %54 to %struct.module.0*
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.syscall_module_data*, %struct.syscall_module_data** %10, align 8
  %58 = getelementptr inbounds %struct.syscall_module_data, %struct.syscall_module_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 %53(%struct.module.0* %55, i32 %56, i32 %59)
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %50, %36
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %5, align 4
  br label %118

63:                                               ; preds = %4
  %64 = load %struct.syscall_module_data*, %struct.syscall_module_data** %10, align 8
  %65 = getelementptr inbounds %struct.syscall_module_data, %struct.syscall_module_data* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i32 0, i32* %5, align 4
  br label %118

69:                                               ; preds = %63
  %70 = load %struct.syscall_module_data*, %struct.syscall_module_data** %10, align 8
  %71 = getelementptr inbounds %struct.syscall_module_data, %struct.syscall_module_data* %70, i32 0, i32 0
  %72 = load i32 (%struct.module.0*, i32, i32)*, i32 (%struct.module.0*, i32, i32)** %71, align 8
  %73 = icmp ne i32 (%struct.module.0*, i32, i32)* %72, null
  br i1 %73, label %74, label %90

74:                                               ; preds = %69
  %75 = load %struct.syscall_module_data*, %struct.syscall_module_data** %10, align 8
  %76 = getelementptr inbounds %struct.syscall_module_data, %struct.syscall_module_data* %75, i32 0, i32 0
  %77 = load i32 (%struct.module.0*, i32, i32)*, i32 (%struct.module.0*, i32, i32)** %76, align 8
  %78 = load %struct.module*, %struct.module** %7, align 8
  %79 = bitcast %struct.module* %78 to %struct.module.0*
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.syscall_module_data*, %struct.syscall_module_data** %10, align 8
  %82 = getelementptr inbounds %struct.syscall_module_data, %struct.syscall_module_data* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 %77(%struct.module.0* %79, i32 %80, i32 %83)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %74
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %5, align 4
  br label %118

89:                                               ; preds = %74
  br label %90

90:                                               ; preds = %89, %69
  %91 = load %struct.sysent*, %struct.sysent** %6, align 8
  %92 = load %struct.syscall_module_data*, %struct.syscall_module_data** %10, align 8
  %93 = getelementptr inbounds %struct.syscall_module_data, %struct.syscall_module_data* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.syscall_module_data*, %struct.syscall_module_data** %10, align 8
  %97 = getelementptr inbounds %struct.syscall_module_data, %struct.syscall_module_data* %96, i32 0, i32 2
  %98 = call i32 @kern_syscall_deregister(%struct.sysent* %91, i32 %95, i32* %97)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %5, align 4
  br label %118

100:                                              ; preds = %4
  %101 = load %struct.syscall_module_data*, %struct.syscall_module_data** %10, align 8
  %102 = getelementptr inbounds %struct.syscall_module_data, %struct.syscall_module_data* %101, i32 0, i32 0
  %103 = load i32 (%struct.module.0*, i32, i32)*, i32 (%struct.module.0*, i32, i32)** %102, align 8
  %104 = icmp ne i32 (%struct.module.0*, i32, i32)* %103, null
  br i1 %104, label %105, label %116

105:                                              ; preds = %100
  %106 = load %struct.syscall_module_data*, %struct.syscall_module_data** %10, align 8
  %107 = getelementptr inbounds %struct.syscall_module_data, %struct.syscall_module_data* %106, i32 0, i32 0
  %108 = load i32 (%struct.module.0*, i32, i32)*, i32 (%struct.module.0*, i32, i32)** %107, align 8
  %109 = load %struct.module*, %struct.module** %7, align 8
  %110 = bitcast %struct.module* %109 to %struct.module.0*
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.syscall_module_data*, %struct.syscall_module_data** %10, align 8
  %113 = getelementptr inbounds %struct.syscall_module_data, %struct.syscall_module_data* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 %108(%struct.module.0* %110, i32 %111, i32 %114)
  store i32 %115, i32* %5, align 4
  br label %118

116:                                              ; preds = %100
  %117 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %116, %105, %90, %87, %68, %61, %32
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @kern_syscall_register(%struct.sysent*, i32*, i32, i32*, i32) #1

declare dso_local i32 @module_setspecific(%struct.module*, %struct.TYPE_3__*) #1

declare dso_local i32 @kern_syscall_deregister(%struct.sysent*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
