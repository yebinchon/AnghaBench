; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sendfile.c_sendfile_iodone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sendfile.c_sendfile_iodone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sf_io = type { i32, i32, %struct.TYPE_14__*, %struct.TYPE_11__*, i32, %struct.socket* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.socket = type { %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (%struct.socket*, %struct.TYPE_14__*, i32)*, i32 (%struct.socket*)* }

@bogus_page = common dso_local global i64 0, align 8
@M_TEMP = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EXT_PGS = common dso_local global i64 0, align 8
@M_EXT = common dso_local global i32 0, align 4
@TCP_TLS_MODE_SW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64*, i32, i32)* @sendfile_iodone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sendfile_iodone(i8* %0, i64* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sf_io*, align 8
  %10 = alloca %struct.socket*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.sf_io*
  store %struct.sf_io* %13, %struct.sf_io** %9, align 8
  %14 = load %struct.sf_io*, %struct.sf_io** %9, align 8
  %15 = getelementptr inbounds %struct.sf_io, %struct.sf_io* %14, i32 0, i32 5
  %16 = load %struct.socket*, %struct.socket** %15, align 8
  store %struct.socket* %16, %struct.socket** %10, align 8
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %37, %4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %17
  %22 = load i64*, i64** %6, align 8
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @bogus_page, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %21
  %30 = load i64*, i64** %6, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @vm_page_xunbusy(i64 %34)
  br label %36

36:                                               ; preds = %29, %21
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %11, align 4
  br label %17

40:                                               ; preds = %17
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.sf_io*, %struct.sf_io** %9, align 8
  %46 = getelementptr inbounds %struct.sf_io, %struct.sf_io* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %43, %40
  %48 = load %struct.sf_io*, %struct.sf_io** %9, align 8
  %49 = getelementptr inbounds %struct.sf_io, %struct.sf_io* %48, i32 0, i32 4
  %50 = call i32 @refcount_release(i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  br label %127

53:                                               ; preds = %47
  %54 = load %struct.sf_io*, %struct.sf_io** %9, align 8
  %55 = getelementptr inbounds %struct.sf_io, %struct.sf_io* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.sf_io*, %struct.sf_io** %9, align 8
  %60 = getelementptr inbounds %struct.sf_io, %struct.sf_io* %59, i32 0, i32 2
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  %62 = icmp eq %struct.TYPE_14__* %61, null
  br label %63

63:                                               ; preds = %58, %53
  %64 = phi i1 [ false, %53 ], [ %62, %58 ]
  %65 = zext i1 %64 to i32
  %66 = call i64 @__predict_false(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load %struct.sf_io*, %struct.sf_io** %9, align 8
  %70 = load i32, i32* @M_TEMP, align 4
  %71 = call i32 @free(%struct.sf_io* %69, i32 %70)
  br label %127

72:                                               ; preds = %63
  %73 = load %struct.socket*, %struct.socket** %10, align 8
  %74 = getelementptr inbounds %struct.socket, %struct.socket* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @CURVNET_SET(i32 %75)
  %77 = load %struct.sf_io*, %struct.sf_io** %9, align 8
  %78 = getelementptr inbounds %struct.sf_io, %struct.sf_io* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @__predict_false(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %102

82:                                               ; preds = %72
  %83 = load %struct.socket*, %struct.socket** %10, align 8
  %84 = getelementptr inbounds %struct.socket, %struct.socket* %83, i32 0, i32 0
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = load i32 (%struct.socket*)*, i32 (%struct.socket*)** %88, align 8
  %90 = load %struct.socket*, %struct.socket** %10, align 8
  %91 = call i32 %89(%struct.socket* %90)
  %92 = load i32, i32* @EIO, align 4
  %93 = load %struct.socket*, %struct.socket** %10, align 8
  %94 = getelementptr inbounds %struct.socket, %struct.socket* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 8
  %95 = load %struct.sf_io*, %struct.sf_io** %9, align 8
  %96 = getelementptr inbounds %struct.sf_io, %struct.sf_io* %95, i32 0, i32 2
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %96, align 8
  %98 = load %struct.sf_io*, %struct.sf_io** %9, align 8
  %99 = getelementptr inbounds %struct.sf_io, %struct.sf_io* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @mb_free_notready(%struct.TYPE_14__* %97, i32 %100)
  br label %118

102:                                              ; preds = %72
  %103 = load %struct.socket*, %struct.socket** %10, align 8
  %104 = getelementptr inbounds %struct.socket, %struct.socket* %103, i32 0, i32 0
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = load i32 (%struct.socket*, %struct.TYPE_14__*, i32)*, i32 (%struct.socket*, %struct.TYPE_14__*, i32)** %108, align 8
  %110 = load %struct.socket*, %struct.socket** %10, align 8
  %111 = load %struct.sf_io*, %struct.sf_io** %9, align 8
  %112 = getelementptr inbounds %struct.sf_io, %struct.sf_io* %111, i32 0, i32 2
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %112, align 8
  %114 = load %struct.sf_io*, %struct.sf_io** %9, align 8
  %115 = getelementptr inbounds %struct.sf_io, %struct.sf_io* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 %109(%struct.socket* %110, %struct.TYPE_14__* %113, i32 %116)
  br label %118

118:                                              ; preds = %102, %82
  %119 = load %struct.socket*, %struct.socket** %10, align 8
  %120 = call i32 @SOCK_LOCK(%struct.socket* %119)
  %121 = load %struct.socket*, %struct.socket** %10, align 8
  %122 = call i32 @sorele(%struct.socket* %121)
  %123 = call i32 (...) @CURVNET_RESTORE()
  %124 = load %struct.sf_io*, %struct.sf_io** %9, align 8
  %125 = load i32, i32* @M_TEMP, align 4
  %126 = call i32 @free(%struct.sf_io* %124, i32 %125)
  br label %127

127:                                              ; preds = %118, %68, %52
  ret void
}

declare dso_local i32 @vm_page_xunbusy(i64) #1

declare dso_local i32 @refcount_release(i32*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @free(%struct.sf_io*, i32) #1

declare dso_local i32 @CURVNET_SET(i32) #1

declare dso_local i32 @mb_free_notready(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @SOCK_LOCK(%struct.socket*) #1

declare dso_local i32 @sorele(%struct.socket*) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
