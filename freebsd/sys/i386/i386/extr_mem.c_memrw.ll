; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_mem.c_memrw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_mem.c_memrw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.uio = type { i64, i64, i64, i64, %struct.iovec* }
%struct.iovec = type { i64 }

@CDEV_MINOR_MEM = common dso_local global i64 0, align 8
@CDEV_MINOR_KMEM = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i64 0, align 8
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"memrw\00", align 1
@kernel_pmap = common dso_local global i32 0, align 4
@memsxlock = common dso_local global i32 0, align 4
@ptvmmap = common dso_local global i32* null, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memrw(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.iovec*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %9, align 8
  store i32 0, i32* %12, align 4
  %14 = load %struct.cdev*, %struct.cdev** %5, align 8
  %15 = call i64 @dev2unit(%struct.cdev* %14)
  %16 = load i64, i64* @CDEV_MINOR_MEM, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load %struct.cdev*, %struct.cdev** %5, align 8
  %20 = call i64 @dev2unit(%struct.cdev* %19)
  %21 = load i64, i64* @CDEV_MINOR_KMEM, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @EIO, align 4
  store i32 %24, i32* %4, align 4
  br label %166

25:                                               ; preds = %18, %3
  %26 = load %struct.cdev*, %struct.cdev** %5, align 8
  %27 = call i64 @dev2unit(%struct.cdev* %26)
  %28 = load i64, i64* @CDEV_MINOR_KMEM, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %59

30:                                               ; preds = %25
  %31 = load %struct.uio*, %struct.uio** %6, align 8
  %32 = getelementptr inbounds %struct.uio, %struct.uio* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %30
  %36 = load %struct.uio*, %struct.uio** %6, align 8
  %37 = getelementptr inbounds %struct.uio, %struct.uio* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = load %struct.uio*, %struct.uio** %6, align 8
  %41 = getelementptr inbounds %struct.uio, %struct.uio* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.uio*, %struct.uio** %6, align 8
  %44 = getelementptr inbounds %struct.uio, %struct.uio* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @UIO_READ, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %35
  %49 = load i32, i32* @VM_PROT_READ, align 4
  br label %52

50:                                               ; preds = %35
  %51 = load i32, i32* @VM_PROT_WRITE, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  %54 = call i32 @kernacc(i32 %39, i64 %42, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* @EFAULT, align 4
  store i32 %57, i32* %4, align 4
  br label %166

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58, %30, %25
  br label %60

60:                                               ; preds = %126, %93, %59
  %61 = load %struct.uio*, %struct.uio** %6, align 8
  %62 = getelementptr inbounds %struct.uio, %struct.uio* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* %12, align 4
  %67 = icmp eq i32 %66, 0
  br label %68

68:                                               ; preds = %65, %60
  %69 = phi i1 [ false, %60 ], [ %67, %65 ]
  br i1 %69, label %70, label %164

70:                                               ; preds = %68
  %71 = load %struct.uio*, %struct.uio** %6, align 8
  %72 = getelementptr inbounds %struct.uio, %struct.uio* %71, i32 0, i32 4
  %73 = load %struct.iovec*, %struct.iovec** %72, align 8
  store %struct.iovec* %73, %struct.iovec** %11, align 8
  %74 = load %struct.iovec*, %struct.iovec** %11, align 8
  %75 = getelementptr inbounds %struct.iovec, %struct.iovec* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %94

78:                                               ; preds = %70
  %79 = load %struct.uio*, %struct.uio** %6, align 8
  %80 = getelementptr inbounds %struct.uio, %struct.uio* %79, i32 0, i32 4
  %81 = load %struct.iovec*, %struct.iovec** %80, align 8
  %82 = getelementptr inbounds %struct.iovec, %struct.iovec* %81, i32 1
  store %struct.iovec* %82, %struct.iovec** %80, align 8
  %83 = load %struct.uio*, %struct.uio** %6, align 8
  %84 = getelementptr inbounds %struct.uio, %struct.uio* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, -1
  store i64 %86, i64* %84, align 8
  %87 = load %struct.uio*, %struct.uio** %6, align 8
  %88 = getelementptr inbounds %struct.uio, %struct.uio* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %78
  %92 = call i32 @panic(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %78
  br label %60

94:                                               ; preds = %70
  %95 = load %struct.cdev*, %struct.cdev** %5, align 8
  %96 = call i64 @dev2unit(%struct.cdev* %95)
  %97 = load i64, i64* @CDEV_MINOR_MEM, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %113

99:                                               ; preds = %94
  %100 = load %struct.uio*, %struct.uio** %6, align 8
  %101 = getelementptr inbounds %struct.uio, %struct.uio* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = call i64 (...) @cpu_getmaxphyaddr()
  %104 = icmp sgt i64 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = load i32, i32* @EFAULT, align 4
  store i32 %106, i32* %12, align 4
  br label %164

107:                                              ; preds = %99
  %108 = load %struct.uio*, %struct.uio** %6, align 8
  %109 = getelementptr inbounds %struct.uio, %struct.uio* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = call i8* @trunc_page(i64 %110)
  %112 = ptrtoint i8* %111 to i64
  store i64 %112, i64* %10, align 8
  br label %126

113:                                              ; preds = %94
  %114 = load %struct.uio*, %struct.uio** %6, align 8
  %115 = getelementptr inbounds %struct.uio, %struct.uio* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = call i8* @trunc_page(i64 %116)
  store i8* %117, i8** %13, align 8
  %118 = load i32, i32* @kernel_pmap, align 4
  %119 = load i8*, i8** %13, align 8
  %120 = call i64 @pmap_extract(i32 %118, i8* %119)
  store i64 %120, i64* %10, align 8
  %121 = load i64, i64* %10, align 8
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %113
  %124 = load i32, i32* @EFAULT, align 4
  store i32 %124, i32* %4, align 4
  br label %166

125:                                              ; preds = %113
  br label %126

126:                                              ; preds = %125, %107
  %127 = call i32 @sx_xlock(i32* @memsxlock)
  %128 = load i32*, i32** @ptvmmap, align 8
  %129 = bitcast i32* %128 to i8*
  %130 = load i64, i64* %10, align 8
  %131 = call i32 @pmap_kenter(i8* %129, i64 %130)
  %132 = load i32, i32* @kernel_pmap, align 4
  %133 = load i32*, i32** @ptvmmap, align 8
  %134 = bitcast i32* %133 to i8*
  %135 = call i32 @pmap_invalidate_page(i32 %132, i8* %134)
  %136 = load %struct.uio*, %struct.uio** %6, align 8
  %137 = getelementptr inbounds %struct.uio, %struct.uio* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = trunc i64 %138 to i32
  %140 = load i32, i32* @PAGE_MASK, align 4
  %141 = and i32 %139, %140
  store i32 %141, i32* %8, align 4
  %142 = load i64, i64* @PAGE_SIZE, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = sub nsw i64 %142, %144
  store i64 %145, i64* %9, align 8
  %146 = load i64, i64* %9, align 8
  %147 = load %struct.iovec*, %struct.iovec** %11, align 8
  %148 = getelementptr inbounds %struct.iovec, %struct.iovec* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = call i64 @min(i64 %146, i64 %149)
  store i64 %150, i64* %9, align 8
  %151 = load i32*, i32** @ptvmmap, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = ptrtoint i32* %154 to i32
  %156 = load i64, i64* %9, align 8
  %157 = trunc i64 %156 to i32
  %158 = load %struct.uio*, %struct.uio** %6, align 8
  %159 = call i32 @uiomove(i32 %155, i32 %157, %struct.uio* %158)
  store i32 %159, i32* %12, align 4
  %160 = load i32*, i32** @ptvmmap, align 8
  %161 = bitcast i32* %160 to i8*
  %162 = call i32 @pmap_qremove(i8* %161, i32 1)
  %163 = call i32 @sx_xunlock(i32* @memsxlock)
  br label %60

164:                                              ; preds = %105, %68
  %165 = load i32, i32* %12, align 4
  store i32 %165, i32* %4, align 4
  br label %166

166:                                              ; preds = %164, %123, %56, %23
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

declare dso_local i64 @dev2unit(%struct.cdev*) #1

declare dso_local i32 @kernacc(i32, i64, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @cpu_getmaxphyaddr(...) #1

declare dso_local i8* @trunc_page(i64) #1

declare dso_local i64 @pmap_extract(i32, i8*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @pmap_kenter(i8*, i64) #1

declare dso_local i32 @pmap_invalidate_page(i32, i8*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @uiomove(i32, i32, %struct.uio*) #1

declare dso_local i32 @pmap_qremove(i8*, i32) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
