; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_chk_host.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_chk_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirlist = type { i32, %struct.hostlist* }
%struct.hostlist = type { i32, %struct.hostlist*, %struct.grouplist* }
%struct.grouplist = type { i32, i32, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.addrinfo* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.addrinfo = type { %struct.sockaddr*, %struct.addrinfo* }
%struct.sockaddr = type { i32 }

@DP_DEFSET = common dso_local global i32 0, align 4
@DP_HOSTSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dirlist*, %struct.sockaddr*, i32*, i32*, i32*, i32**)* @chk_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chk_host(%struct.dirlist* %0, %struct.sockaddr* %1, i32* %2, i32* %3, i32* %4, i32** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dirlist*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca %struct.hostlist*, align 8
  %15 = alloca %struct.grouplist*, align 8
  %16 = alloca %struct.addrinfo*, align 8
  store %struct.dirlist* %0, %struct.dirlist** %8, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32** %5, i32*** %13, align 8
  %17 = load %struct.dirlist*, %struct.dirlist** %8, align 8
  %18 = icmp ne %struct.dirlist* %17, null
  br i1 %18, label %19, label %124

19:                                               ; preds = %6
  %20 = load %struct.dirlist*, %struct.dirlist** %8, align 8
  %21 = getelementptr inbounds %struct.dirlist, %struct.dirlist* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @DP_DEFSET, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load %struct.dirlist*, %struct.dirlist** %8, align 8
  %28 = getelementptr inbounds %struct.dirlist, %struct.dirlist* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32*, i32** %10, align 8
  store i32 %29, i32* %30, align 4
  br label %31

31:                                               ; preds = %26, %19
  %32 = load %struct.dirlist*, %struct.dirlist** %8, align 8
  %33 = getelementptr inbounds %struct.dirlist, %struct.dirlist* %32, i32 0, i32 1
  %34 = load %struct.hostlist*, %struct.hostlist** %33, align 8
  store %struct.hostlist* %34, %struct.hostlist** %14, align 8
  br label %35

35:                                               ; preds = %119, %31
  %36 = load %struct.hostlist*, %struct.hostlist** %14, align 8
  %37 = icmp ne %struct.hostlist* %36, null
  br i1 %37, label %38, label %123

38:                                               ; preds = %35
  %39 = load %struct.hostlist*, %struct.hostlist** %14, align 8
  %40 = getelementptr inbounds %struct.hostlist, %struct.hostlist* %39, i32 0, i32 2
  %41 = load %struct.grouplist*, %struct.grouplist** %40, align 8
  store %struct.grouplist* %41, %struct.grouplist** %15, align 8
  %42 = load %struct.grouplist*, %struct.grouplist** %15, align 8
  %43 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %119 [
    i32 129, label %45
    i32 128, label %85
  ]

45:                                               ; preds = %38
  %46 = load %struct.grouplist*, %struct.grouplist** %15, align 8
  %47 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load %struct.addrinfo*, %struct.addrinfo** %48, align 8
  store %struct.addrinfo* %49, %struct.addrinfo** %16, align 8
  br label %50

50:                                               ; preds = %80, %45
  %51 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %52 = icmp ne %struct.addrinfo* %51, null
  br i1 %52, label %53, label %84

53:                                               ; preds = %50
  %54 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %55 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %54, i32 0, i32 0
  %56 = load %struct.sockaddr*, %struct.sockaddr** %55, align 8
  %57 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %58 = call i32 @sacmp(%struct.sockaddr* %56, %struct.sockaddr* %57, %struct.sockaddr* null)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %79, label %60

60:                                               ; preds = %53
  %61 = load %struct.hostlist*, %struct.hostlist** %14, align 8
  %62 = getelementptr inbounds %struct.hostlist, %struct.hostlist* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @DP_HOSTSET, align 4
  %65 = or i32 %63, %64
  %66 = load i32*, i32** %11, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i32*, i32** %12, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %78

69:                                               ; preds = %60
  %70 = load %struct.grouplist*, %struct.grouplist** %15, align 8
  %71 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %12, align 8
  store i32 %72, i32* %73, align 4
  %74 = load %struct.grouplist*, %struct.grouplist** %15, align 8
  %75 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i32**, i32*** %13, align 8
  store i32* %76, i32** %77, align 8
  br label %78

78:                                               ; preds = %69, %60
  store i32 1, i32* %7, align 4
  br label %125

79:                                               ; preds = %53
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %82 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %81, i32 0, i32 1
  %83 = load %struct.addrinfo*, %struct.addrinfo** %82, align 8
  store %struct.addrinfo* %83, %struct.addrinfo** %16, align 8
  br label %50

84:                                               ; preds = %50
  br label %119

85:                                               ; preds = %38
  %86 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %87 = load %struct.grouplist*, %struct.grouplist** %15, align 8
  %88 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = bitcast i32* %90 to %struct.sockaddr*
  %92 = load %struct.grouplist*, %struct.grouplist** %15, align 8
  %93 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = bitcast i32* %95 to %struct.sockaddr*
  %97 = call i32 @sacmp(%struct.sockaddr* %86, %struct.sockaddr* %91, %struct.sockaddr* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %118, label %99

99:                                               ; preds = %85
  %100 = load %struct.hostlist*, %struct.hostlist** %14, align 8
  %101 = getelementptr inbounds %struct.hostlist, %struct.hostlist* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @DP_HOSTSET, align 4
  %104 = or i32 %102, %103
  %105 = load i32*, i32** %11, align 8
  store i32 %104, i32* %105, align 4
  %106 = load i32*, i32** %12, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %117

108:                                              ; preds = %99
  %109 = load %struct.grouplist*, %struct.grouplist** %15, align 8
  %110 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %12, align 8
  store i32 %111, i32* %112, align 4
  %113 = load %struct.grouplist*, %struct.grouplist** %15, align 8
  %114 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = load i32**, i32*** %13, align 8
  store i32* %115, i32** %116, align 8
  br label %117

117:                                              ; preds = %108, %99
  store i32 1, i32* %7, align 4
  br label %125

118:                                              ; preds = %85
  br label %119

119:                                              ; preds = %38, %118, %84
  %120 = load %struct.hostlist*, %struct.hostlist** %14, align 8
  %121 = getelementptr inbounds %struct.hostlist, %struct.hostlist* %120, i32 0, i32 1
  %122 = load %struct.hostlist*, %struct.hostlist** %121, align 8
  store %struct.hostlist* %122, %struct.hostlist** %14, align 8
  br label %35

123:                                              ; preds = %35
  br label %124

124:                                              ; preds = %123, %6
  store i32 0, i32* %7, align 4
  br label %125

125:                                              ; preds = %124, %117, %78
  %126 = load i32, i32* %7, align 4
  ret i32 %126
}

declare dso_local i32 @sacmp(%struct.sockaddr*, %struct.sockaddr*, %struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
