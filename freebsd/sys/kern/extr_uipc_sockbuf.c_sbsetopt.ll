; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sockbuf.c_sbsetopt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sockbuf.c_sbsetopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i16, i16, %struct.sockbuf, %struct.sockbuf, i32, i32, i32, i32 }
%struct.sockbuf = type { i16, i32, i32 }

@sb_max_adj = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@SB_AUTOSIZE = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sbsetopt(%struct.socket* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockbuf*, align 8
  %8 = alloca i16*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.sockbuf* null, %struct.sockbuf** %7, align 8
  %12 = load %struct.socket*, %struct.socket** %4, align 8
  %13 = call i32 @SOCK_LOCK(%struct.socket* %12)
  %14 = load %struct.socket*, %struct.socket** %4, align 8
  %15 = call i64 @SOLISTENING(%struct.socket* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %33 [
    i32 128, label %19
    i32 129, label %19
    i32 130, label %26
    i32 131, label %26
  ]

19:                                               ; preds = %17, %17
  %20 = load %struct.socket*, %struct.socket** %4, align 8
  %21 = getelementptr inbounds %struct.socket, %struct.socket* %20, i32 0, i32 7
  store i32* %21, i32** %10, align 8
  %22 = load %struct.socket*, %struct.socket** %4, align 8
  %23 = getelementptr inbounds %struct.socket, %struct.socket* %22, i32 0, i32 6
  store i32* %23, i32** %9, align 8
  %24 = load %struct.socket*, %struct.socket** %4, align 8
  %25 = getelementptr inbounds %struct.socket, %struct.socket* %24, i32 0, i32 0
  store i16* %25, i16** %8, align 8
  br label %33

26:                                               ; preds = %17, %17
  %27 = load %struct.socket*, %struct.socket** %4, align 8
  %28 = getelementptr inbounds %struct.socket, %struct.socket* %27, i32 0, i32 5
  store i32* %28, i32** %10, align 8
  %29 = load %struct.socket*, %struct.socket** %4, align 8
  %30 = getelementptr inbounds %struct.socket, %struct.socket* %29, i32 0, i32 4
  store i32* %30, i32** %9, align 8
  %31 = load %struct.socket*, %struct.socket** %4, align 8
  %32 = getelementptr inbounds %struct.socket, %struct.socket* %31, i32 0, i32 1
  store i16* %32, i16** %8, align 8
  br label %33

33:                                               ; preds = %17, %26, %19
  br label %51

34:                                               ; preds = %3
  %35 = load i32, i32* %5, align 4
  switch i32 %35, label %42 [
    i32 128, label %36
    i32 129, label %36
    i32 130, label %39
    i32 131, label %39
  ]

36:                                               ; preds = %34, %34
  %37 = load %struct.socket*, %struct.socket** %4, align 8
  %38 = getelementptr inbounds %struct.socket, %struct.socket* %37, i32 0, i32 3
  store %struct.sockbuf* %38, %struct.sockbuf** %7, align 8
  br label %42

39:                                               ; preds = %34, %34
  %40 = load %struct.socket*, %struct.socket** %4, align 8
  %41 = getelementptr inbounds %struct.socket, %struct.socket* %40, i32 0, i32 2
  store %struct.sockbuf* %41, %struct.sockbuf** %7, align 8
  br label %42

42:                                               ; preds = %34, %39, %36
  %43 = load %struct.sockbuf*, %struct.sockbuf** %7, align 8
  %44 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %43, i32 0, i32 0
  store i16* %44, i16** %8, align 8
  %45 = load %struct.sockbuf*, %struct.sockbuf** %7, align 8
  %46 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %45, i32 0, i32 2
  store i32* %46, i32** %9, align 8
  %47 = load %struct.sockbuf*, %struct.sockbuf** %7, align 8
  %48 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %47, i32 0, i32 1
  store i32* %48, i32** %10, align 8
  %49 = load %struct.sockbuf*, %struct.sockbuf** %7, align 8
  %50 = call i32 @SOCKBUF_LOCK(%struct.sockbuf* %49)
  br label %51

51:                                               ; preds = %42, %33
  store i32 0, i32* %11, align 4
  %52 = load i32, i32* %5, align 4
  switch i32 %52, label %112 [
    i32 129, label %53
    i32 131, label %53
    i32 128, label %99
    i32 130, label %99
  ]

53:                                               ; preds = %51, %51
  %54 = load %struct.socket*, %struct.socket** %4, align 8
  %55 = call i64 @SOLISTENING(%struct.socket* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %76

57:                                               ; preds = %53
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @sb_max_adj, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* @ENOBUFS, align 4
  store i32 %62, i32* %11, align 4
  br label %112

63:                                               ; preds = %57
  %64 = load i32, i32* %6, align 4
  %65 = load i32*, i32** %9, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %9, align 8
  %69 = load i32, i32* %68, align 4
  %70 = icmp sgt i32 %67, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %63
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %10, align 8
  store i32 %73, i32* %74, align 4
  br label %75

75:                                               ; preds = %71, %63
  br label %86

76:                                               ; preds = %53
  %77 = load %struct.sockbuf*, %struct.sockbuf** %7, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.socket*, %struct.socket** %4, align 8
  %80 = load i32, i32* @curthread, align 4
  %81 = call i32 @sbreserve_locked(%struct.sockbuf* %77, i32 %78, %struct.socket* %79, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %76
  %84 = load i32, i32* @ENOBUFS, align 4
  store i32 %84, i32* %11, align 4
  br label %85

85:                                               ; preds = %83, %76
  br label %86

86:                                               ; preds = %85, %75
  %87 = load i32, i32* %11, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %86
  %90 = load i16, i16* @SB_AUTOSIZE, align 2
  %91 = sext i16 %90 to i32
  %92 = xor i32 %91, -1
  %93 = load i16*, i16** %8, align 8
  %94 = load i16, i16* %93, align 2
  %95 = sext i16 %94 to i32
  %96 = and i32 %95, %92
  %97 = trunc i32 %96 to i16
  store i16 %97, i16* %93, align 2
  br label %98

98:                                               ; preds = %89, %86
  br label %112

99:                                               ; preds = %51, %51
  %100 = load i32, i32* %6, align 4
  %101 = load i32*, i32** %9, align 8
  %102 = load i32, i32* %101, align 4
  %103 = icmp sgt i32 %100, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load i32*, i32** %9, align 8
  %106 = load i32, i32* %105, align 4
  br label %109

107:                                              ; preds = %99
  %108 = load i32, i32* %6, align 4
  br label %109

109:                                              ; preds = %107, %104
  %110 = phi i32 [ %106, %104 ], [ %108, %107 ]
  %111 = load i32*, i32** %10, align 8
  store i32 %110, i32* %111, align 4
  br label %112

112:                                              ; preds = %51, %109, %98, %61
  %113 = load %struct.socket*, %struct.socket** %4, align 8
  %114 = call i64 @SOLISTENING(%struct.socket* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %112
  %117 = load %struct.sockbuf*, %struct.sockbuf** %7, align 8
  %118 = call i32 @SOCKBUF_UNLOCK(%struct.sockbuf* %117)
  br label %119

119:                                              ; preds = %116, %112
  %120 = load %struct.socket*, %struct.socket** %4, align 8
  %121 = call i32 @SOCK_UNLOCK(%struct.socket* %120)
  %122 = load i32, i32* %11, align 4
  ret i32 %122
}

declare dso_local i32 @SOCK_LOCK(%struct.socket*) #1

declare dso_local i64 @SOLISTENING(%struct.socket*) #1

declare dso_local i32 @SOCKBUF_LOCK(%struct.sockbuf*) #1

declare dso_local i32 @sbreserve_locked(%struct.sockbuf*, i32, %struct.socket*, i32) #1

declare dso_local i32 @SOCKBUF_UNLOCK(%struct.sockbuf*) #1

declare dso_local i32 @SOCK_UNLOCK(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
