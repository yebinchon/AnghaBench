; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_check_pack_inflate.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_check_pack_inflate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_git = type { i32 }
%struct.pack_window = type { i32 }
%struct.TYPE_6__ = type { i8*, i8*, i32, i64, i64, i32 }

@Z_FINISH = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@Z_BUF_ERROR = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packed_git*, %struct.pack_window**, i64, i64, i64)* @check_pack_inflate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_pack_inflate(%struct.packed_git* %0, %struct.pack_window** %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.packed_git*, align 8
  %7 = alloca %struct.pack_window**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_6__, align 8
  %12 = alloca [4096 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.packed_git* %0, %struct.packed_git** %6, align 8
  store %struct.pack_window** %1, %struct.pack_window*** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = call i32 @memset(%struct.TYPE_6__* %11, i32 0, i32 48)
  %16 = call i32 @git_inflate_init(%struct.TYPE_6__* %11)
  br label %17

17:                                               ; preds = %46, %5
  %18 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %19 = load %struct.pack_window**, %struct.pack_window*** %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 5
  %22 = call i8* @use_pack(%struct.packed_git* %18, %struct.pack_window** %19, i64 %20, i32* %21)
  store i8* %22, i8** %13, align 8
  %23 = load i8*, i8** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i8* %23, i8** %24, align 8
  %25 = getelementptr inbounds [4096 x i8], [4096 x i8]* %12, i64 0, i64 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  store i8* %25, i8** %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  store i32 4096, i32* %27, align 8
  %28 = load i32, i32* @Z_FINISH, align 4
  %29 = call i32 @git_inflate(%struct.TYPE_6__* %11, i32 %28)
  store i32 %29, i32* %14, align 4
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i8*, i8** %13, align 8
  %33 = ptrtoint i8* %31 to i64
  %34 = ptrtoint i8* %32 to i64
  %35 = sub i64 %33, %34
  %36 = load i64, i64* %8, align 8
  %37 = add nsw i64 %36, %35
  store i64 %37, i64* %8, align 8
  br label %38

38:                                               ; preds = %17
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* @Z_OK, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* @Z_BUF_ERROR, align 4
  %45 = icmp eq i32 %43, %44
  br label %46

46:                                               ; preds = %42, %38
  %47 = phi i1 [ true, %38 ], [ %45, %42 ]
  br i1 %47, label %17, label %48

48:                                               ; preds = %46
  %49 = call i32 @git_inflate_end(%struct.TYPE_6__* %11)
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* @Z_STREAM_END, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %10, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %9, align 8
  %62 = icmp eq i64 %60, %61
  br label %63

63:                                               ; preds = %58, %53, %48
  %64 = phi i1 [ false, %53 ], [ false, %48 ], [ %62, %58 ]
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 0, i32 -1
  ret i32 %66
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @git_inflate_init(%struct.TYPE_6__*) #1

declare dso_local i8* @use_pack(%struct.packed_git*, %struct.pack_window**, i64, i32*) #1

declare dso_local i32 @git_inflate(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @git_inflate_end(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
