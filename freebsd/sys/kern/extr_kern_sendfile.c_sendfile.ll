; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sendfile.c_sendfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sendfile.c_sendfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.sendfile_args = type { i64, i32*, i32, i32, i32, i32, i32* }
%struct.sf_hdtr = type { i32, i32*, i32, i32* }
%struct.uio = type { i64 }
%struct.file = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@cap_pread_rights = common dso_local global i32 0, align 4
@M_IOV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.sendfile_args*, i32)* @sendfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sendfile(%struct.thread* %0, %struct.sendfile_args* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.sendfile_args*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sf_hdtr, align 8
  %9 = alloca %struct.uio*, align 8
  %10 = alloca %struct.uio*, align 8
  %11 = alloca %struct.file*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store %struct.sendfile_args* %1, %struct.sendfile_args** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.sendfile_args*, %struct.sendfile_args** %6, align 8
  %15 = getelementptr inbounds %struct.sendfile_args, %struct.sendfile_args* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %4, align 4
  br label %113

20:                                               ; preds = %3
  store i64 0, i64* %12, align 8
  store %struct.uio* null, %struct.uio** %10, align 8
  store %struct.uio* null, %struct.uio** %9, align 8
  %21 = load %struct.sendfile_args*, %struct.sendfile_args** %6, align 8
  %22 = getelementptr inbounds %struct.sendfile_args, %struct.sendfile_args* %21, i32 0, i32 6
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %62

25:                                               ; preds = %20
  %26 = load %struct.sendfile_args*, %struct.sendfile_args** %6, align 8
  %27 = getelementptr inbounds %struct.sendfile_args, %struct.sendfile_args* %26, i32 0, i32 6
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @copyin(i32* %28, %struct.sf_hdtr* %8, i32 32)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %105

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.sf_hdtr, %struct.sf_hdtr* %8, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.sf_hdtr, %struct.sf_hdtr* %8, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds %struct.sf_hdtr, %struct.sf_hdtr* %8, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @copyinuio(i32* %39, i32 %41, %struct.uio** %9)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %105

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %33
  %48 = getelementptr inbounds %struct.sf_hdtr, %struct.sf_hdtr* %8, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %61

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.sf_hdtr, %struct.sf_hdtr* %8, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds %struct.sf_hdtr, %struct.sf_hdtr* %8, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @copyinuio(i32* %53, i32 %55, %struct.uio** %10)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %105

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %60, %47
  br label %62

62:                                               ; preds = %61, %20
  %63 = load %struct.sendfile_args*, %struct.sendfile_args** %6, align 8
  %64 = getelementptr inbounds %struct.sendfile_args, %struct.sendfile_args* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @AUDIT_ARG_FD(i32 %65)
  %67 = load %struct.thread*, %struct.thread** %5, align 8
  %68 = load %struct.sendfile_args*, %struct.sendfile_args** %6, align 8
  %69 = getelementptr inbounds %struct.sendfile_args, %struct.sendfile_args* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @fget_read(%struct.thread* %67, i32 %70, i32* @cap_pread_rights, %struct.file** %11)
  store i32 %71, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %62
  br label %105

74:                                               ; preds = %62
  %75 = load %struct.file*, %struct.file** %11, align 8
  %76 = load %struct.sendfile_args*, %struct.sendfile_args** %6, align 8
  %77 = getelementptr inbounds %struct.sendfile_args, %struct.sendfile_args* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.uio*, %struct.uio** %9, align 8
  %80 = load %struct.uio*, %struct.uio** %10, align 8
  %81 = load %struct.sendfile_args*, %struct.sendfile_args** %6, align 8
  %82 = getelementptr inbounds %struct.sendfile_args, %struct.sendfile_args* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.sendfile_args*, %struct.sendfile_args** %6, align 8
  %85 = getelementptr inbounds %struct.sendfile_args, %struct.sendfile_args* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.sendfile_args*, %struct.sendfile_args** %6, align 8
  %88 = getelementptr inbounds %struct.sendfile_args, %struct.sendfile_args* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.thread*, %struct.thread** %5, align 8
  %91 = call i32 @fo_sendfile(%struct.file* %75, i32 %78, %struct.uio* %79, %struct.uio* %80, i32 %83, i64 %86, i64* %12, i32 %89, %struct.thread* %90)
  store i32 %91, i32* %13, align 4
  %92 = load %struct.file*, %struct.file** %11, align 8
  %93 = load %struct.thread*, %struct.thread** %5, align 8
  %94 = call i32 @fdrop(%struct.file* %92, %struct.thread* %93)
  %95 = load %struct.sendfile_args*, %struct.sendfile_args** %6, align 8
  %96 = getelementptr inbounds %struct.sendfile_args, %struct.sendfile_args* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %104

99:                                               ; preds = %74
  %100 = load %struct.sendfile_args*, %struct.sendfile_args** %6, align 8
  %101 = getelementptr inbounds %struct.sendfile_args, %struct.sendfile_args* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @copyout(i64* %12, i32* %102, i32 8)
  br label %104

104:                                              ; preds = %99, %74
  br label %105

105:                                              ; preds = %104, %73, %59, %45, %32
  %106 = load %struct.uio*, %struct.uio** %9, align 8
  %107 = load i32, i32* @M_IOV, align 4
  %108 = call i32 @free(%struct.uio* %106, i32 %107)
  %109 = load %struct.uio*, %struct.uio** %10, align 8
  %110 = load i32, i32* @M_IOV, align 4
  %111 = call i32 @free(%struct.uio* %109, i32 %110)
  %112 = load i32, i32* %13, align 4
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %105, %18
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @copyin(i32*, %struct.sf_hdtr*, i32) #1

declare dso_local i32 @copyinuio(i32*, i32, %struct.uio**) #1

declare dso_local i32 @AUDIT_ARG_FD(i32) #1

declare dso_local i32 @fget_read(%struct.thread*, i32, i32*, %struct.file**) #1

declare dso_local i32 @fo_sendfile(%struct.file*, i32, %struct.uio*, %struct.uio*, i32, i64, i64*, i32, %struct.thread*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

declare dso_local i32 @copyout(i64*, i32*, i32) #1

declare dso_local i32 @free(%struct.uio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
