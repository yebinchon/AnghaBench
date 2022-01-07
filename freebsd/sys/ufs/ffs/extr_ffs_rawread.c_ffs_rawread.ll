; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_rawread.c_ffs_rawread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_rawread.c_ffs_rawread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.vnode = type { i32 }
%struct.uio = type { i32, i64, i64, i32, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.inode = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@allowrawread = common dso_local global i64 0, align 8
@UIO_USERSPACE = common dso_local global i64 0, align 8
@curthread = common dso_local global %struct.TYPE_8__* null, align 8
@TDP_DEADLKTREAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ffs_rawread(%struct.vnode* %0, %struct.uio* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.inode*, align 8
  %14 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load i64, i64* @allowrawread, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %157

17:                                               ; preds = %3
  %18 = load %struct.uio*, %struct.uio** %6, align 8
  %19 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %157

22:                                               ; preds = %17
  %23 = load %struct.uio*, %struct.uio** %6, align 8
  %24 = getelementptr inbounds %struct.uio, %struct.uio* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @UIO_USERSPACE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %157

28:                                               ; preds = %22
  %29 = load %struct.uio*, %struct.uio** %6, align 8
  %30 = getelementptr inbounds %struct.uio, %struct.uio* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.uio*, %struct.uio** %6, align 8
  %33 = getelementptr inbounds %struct.uio, %struct.uio* %32, i32 0, i32 5
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %31, %36
  br i1 %37, label %38, label %157

38:                                               ; preds = %28
  %39 = load %struct.uio*, %struct.uio** %6, align 8
  %40 = getelementptr inbounds %struct.uio, %struct.uio* %39, i32 0, i32 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = icmp ne %struct.TYPE_8__* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.uio*, %struct.uio** %6, align 8
  %45 = getelementptr inbounds %struct.uio, %struct.uio* %44, i32 0, i32 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  br label %49

47:                                               ; preds = %38
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curthread, align 8
  br label %49

49:                                               ; preds = %47, %43
  %50 = phi %struct.TYPE_8__* [ %46, %43 ], [ %48, %47 ]
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @TDP_DEADLKTREAT, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %157

56:                                               ; preds = %49
  %57 = load %struct.vnode*, %struct.vnode** %5, align 8
  %58 = call %struct.inode* @VTOI(%struct.vnode* %57)
  store %struct.inode* %58, %struct.inode** %13, align 8
  %59 = load %struct.inode*, %struct.inode** %13, align 8
  %60 = call %struct.TYPE_10__* @ITODEVVP(%struct.inode* %59)
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %8, align 4
  %64 = load %struct.uio*, %struct.uio** %6, align 8
  %65 = getelementptr inbounds %struct.uio, %struct.uio* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sub nsw i32 %67, 1
  %69 = and i32 %66, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %156

71:                                               ; preds = %56
  %72 = load %struct.uio*, %struct.uio** %6, align 8
  %73 = getelementptr inbounds %struct.uio, %struct.uio* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = and i64 %74, %77
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %156

80:                                               ; preds = %71
  %81 = load %struct.vnode*, %struct.vnode** %5, align 8
  %82 = call i32 @ffs_rawread_sync(%struct.vnode* %81)
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* %14, align 4
  store i32 %86, i32* %4, align 4
  br label %159

87:                                               ; preds = %80
  %88 = load %struct.inode*, %struct.inode** %13, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.uio*, %struct.uio** %6, align 8
  %92 = getelementptr inbounds %struct.uio, %struct.uio* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = icmp sgt i32 %90, %93
  br i1 %94, label %95, label %155

95:                                               ; preds = %87
  %96 = load %struct.inode*, %struct.inode** %13, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.uio*, %struct.uio** %6, align 8
  %100 = getelementptr inbounds %struct.uio, %struct.uio* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = sub nsw i32 %98, %101
  store i32 %102, i32* %9, align 4
  %103 = load %struct.uio*, %struct.uio** %6, align 8
  %104 = getelementptr inbounds %struct.uio, %struct.uio* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = icmp sle i64 %105, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %95
  %110 = load i32*, i32** %7, align 8
  store i32 1, i32* %110, align 4
  %111 = load %struct.vnode*, %struct.vnode** %5, align 8
  %112 = load %struct.uio*, %struct.uio** %6, align 8
  %113 = call i32 @ffs_rawread_main(%struct.vnode* %111, %struct.uio* %112)
  store i32 %113, i32* %4, align 4
  br label %159

114:                                              ; preds = %95
  %115 = load %struct.inode*, %struct.inode** %13, align 8
  %116 = getelementptr inbounds %struct.inode, %struct.inode* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.inode*, %struct.inode** %13, align 8
  %119 = call %struct.TYPE_9__* @ITOFS(%struct.inode* %118)
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = urem i32 %117, %121
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %11, align 4
  %125 = sub nsw i32 %123, %124
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %154

128:                                              ; preds = %114
  %129 = load %struct.uio*, %struct.uio** %6, align 8
  %130 = getelementptr inbounds %struct.uio, %struct.uio* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load i32, i32* %10, align 4
  %133 = sext i32 %132 to i64
  %134 = sub nsw i64 %131, %133
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = load %struct.uio*, %struct.uio** %6, align 8
  %139 = getelementptr inbounds %struct.uio, %struct.uio* %138, i32 0, i32 2
  store i64 %137, i64* %139, align 8
  %140 = load %struct.vnode*, %struct.vnode** %5, align 8
  %141 = load %struct.uio*, %struct.uio** %6, align 8
  %142 = call i32 @ffs_rawread_main(%struct.vnode* %140, %struct.uio* %141)
  store i32 %142, i32* %14, align 4
  %143 = load i32, i32* %12, align 4
  %144 = sext i32 %143 to i64
  %145 = load %struct.uio*, %struct.uio** %6, align 8
  %146 = getelementptr inbounds %struct.uio, %struct.uio* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %147, %144
  store i64 %148, i64* %146, align 8
  %149 = load i32, i32* %14, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %128
  %152 = load i32, i32* %14, align 4
  store i32 %152, i32* %4, align 4
  br label %159

153:                                              ; preds = %128
  br label %154

154:                                              ; preds = %153, %114
  br label %155

155:                                              ; preds = %154, %87
  br label %156

156:                                              ; preds = %155, %71, %56
  br label %157

157:                                              ; preds = %156, %49, %28, %22, %17, %3
  %158 = load i32*, i32** %7, align 8
  store i32 0, i32* %158, align 4
  store i32 0, i32* %4, align 4
  br label %159

159:                                              ; preds = %157, %151, %109, %85
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local %struct.inode* @VTOI(%struct.vnode*) #1

declare dso_local %struct.TYPE_10__* @ITODEVVP(%struct.inode*) #1

declare dso_local i32 @ffs_rawread_sync(%struct.vnode*) #1

declare dso_local i32 @ffs_rawread_main(%struct.vnode*, %struct.uio*) #1

declare dso_local %struct.TYPE_9__* @ITOFS(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
