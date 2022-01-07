; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_allocbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_allocbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"allocbuf: buffer too small\00", align 1
@DEV_BSIZE = common dso_local global i32 0, align 4
@B_VMIO = common dso_local global i32 0, align 4
@B_MALLOC = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"allocbuf: VMIO buffer can't be malloced\00", align 1
@B_CACHE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @allocbuf(%struct.buf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.buf* %0, %struct.buf** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.buf*, %struct.buf** %4, align 8
  %9 = getelementptr inbounds %struct.buf, %struct.buf* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %136

14:                                               ; preds = %2
  %15 = load %struct.buf*, %struct.buf** %4, align 8
  %16 = getelementptr inbounds %struct.buf, %struct.buf* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load %struct.buf*, %struct.buf** %4, align 8
  %21 = getelementptr inbounds %struct.buf, %struct.buf* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = call i32 @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %19, %14
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @DEV_BSIZE, align 4
  %30 = call i32 @roundup2(i32 %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load %struct.buf*, %struct.buf** %4, align 8
  %32 = getelementptr inbounds %struct.buf, %struct.buf* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @B_VMIO, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %69

37:                                               ; preds = %27
  %38 = load %struct.buf*, %struct.buf** %4, align 8
  %39 = getelementptr inbounds %struct.buf, %struct.buf* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @B_MALLOC, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @round_page(i32 %45)
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %44, %37
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.buf*, %struct.buf** %4, align 8
  %50 = getelementptr inbounds %struct.buf, %struct.buf* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load %struct.buf*, %struct.buf** %4, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @vfs_nonvmio_truncate(%struct.buf* %54, i32 %55)
  br label %68

57:                                               ; preds = %47
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.buf*, %struct.buf** %4, align 8
  %60 = getelementptr inbounds %struct.buf, %struct.buf* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %58, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load %struct.buf*, %struct.buf** %4, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @vfs_nonvmio_extend(%struct.buf* %64, i32 %65)
  br label %67

67:                                               ; preds = %63, %57
  br label %68

68:                                               ; preds = %67, %53
  br label %132

69:                                               ; preds = %27
  %70 = load i32, i32* %5, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  br label %82

73:                                               ; preds = %69
  %74 = load %struct.buf*, %struct.buf** %4, align 8
  %75 = getelementptr inbounds %struct.buf, %struct.buf* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @PAGE_MASK, align 4
  %78 = and i32 %76, %77
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %78, %79
  %81 = call i32 @num_pages(i32 %80)
  br label %82

82:                                               ; preds = %73, %72
  %83 = phi i32 [ 0, %72 ], [ %81, %73 ]
  store i32 %83, i32* %7, align 4
  %84 = load %struct.buf*, %struct.buf** %4, align 8
  %85 = getelementptr inbounds %struct.buf, %struct.buf* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @B_MALLOC, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %82
  %91 = call i32 @panic(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %82
  %93 = load i32, i32* %5, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %92
  %96 = load %struct.buf*, %struct.buf** %4, align 8
  %97 = getelementptr inbounds %struct.buf, %struct.buf* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %95, %92
  %101 = load i32, i32* @B_CACHE, align 4
  %102 = load %struct.buf*, %struct.buf** %4, align 8
  %103 = getelementptr inbounds %struct.buf, %struct.buf* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %100, %95
  %107 = load i32, i32* %6, align 4
  %108 = load %struct.buf*, %struct.buf** %4, align 8
  %109 = getelementptr inbounds %struct.buf, %struct.buf* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load %struct.buf*, %struct.buf** %4, align 8
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @vfs_vmio_truncate(%struct.buf* %113, i32 %114)
  br label %128

116:                                              ; preds = %106
  %117 = load i32, i32* %5, align 4
  %118 = load %struct.buf*, %struct.buf** %4, align 8
  %119 = getelementptr inbounds %struct.buf, %struct.buf* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp sgt i32 %117, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %116
  %123 = load %struct.buf*, %struct.buf** %4, align 8
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* %5, align 4
  %126 = call i32 @vfs_vmio_extend(%struct.buf* %123, i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %122, %116
  br label %128

128:                                              ; preds = %127, %112
  %129 = load %struct.buf*, %struct.buf** %4, align 8
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @bufspace_adjust(%struct.buf* %129, i32 %130)
  br label %132

132:                                              ; preds = %128, %68
  %133 = load i32, i32* %5, align 4
  %134 = load %struct.buf*, %struct.buf** %4, align 8
  %135 = getelementptr inbounds %struct.buf, %struct.buf* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 4
  store i32 1, i32* %3, align 4
  br label %136

136:                                              ; preds = %132, %13
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @roundup2(i32, i32) #1

declare dso_local i32 @round_page(i32) #1

declare dso_local i32 @vfs_nonvmio_truncate(%struct.buf*, i32) #1

declare dso_local i32 @vfs_nonvmio_extend(%struct.buf*, i32) #1

declare dso_local i32 @num_pages(i32) #1

declare dso_local i32 @vfs_vmio_truncate(%struct.buf*, i32) #1

declare dso_local i32 @vfs_vmio_extend(%struct.buf*, i32, i32) #1

declare dso_local i32 @bufspace_adjust(%struct.buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
