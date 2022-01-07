; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_unix.c_unixpr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_unix.c_unixpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xsocket = type { i32 }
%struct.xunpgen = type { i32, i64, i64 }
%struct.xunpcb = type { i64, %struct.xsocket }

@live = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"Some {:type/%s} sockets may have been {:action/deleted}.\0A\00", align 1
@socktype = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [58 x i8] c"Some {:type/%s} sockets may have been {:action/created}.\0A\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"Some {:type/%s} sockets may have been {:action/created or deleted}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unixpr(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.xsocket*, align 8
  %17 = alloca %struct.xunpgen*, align 8
  %18 = alloca %struct.xunpgen*, align 8
  %19 = alloca %struct.xunpcb*, align 8
  %20 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32* %5, i32** %12, align 8
  store i8* null, i8** %13, align 8
  store i32 128, i32* %15, align 4
  br label %21

21:                                               ; preds = %157, %6
  %22 = load i32, i32* %15, align 4
  %23 = icmp sle i32 %22, 129
  br i1 %23, label %24, label %160

24:                                               ; preds = %21
  %25 = load i64, i64* @live, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* %15, align 4
  %29 = call i32 @pcblist_sysctl(i32 %28, i8** %13)
  store i32 %29, i32* %14, align 4
  br label %43

30:                                               ; preds = %24
  store i64 0, i64* %20, align 8
  %31 = load i32, i32* %15, align 4
  switch i32 %31, label %38 [
    i32 128, label %32
    i32 130, label %34
    i32 129, label %36
  ]

32:                                               ; preds = %30
  %33 = load i64, i64* %10, align 8
  store i64 %33, i64* %20, align 8
  br label %38

34:                                               ; preds = %30
  %35 = load i64, i64* %9, align 8
  store i64 %35, i64* %20, align 8
  br label %38

36:                                               ; preds = %30
  %37 = load i64, i64* %11, align 8
  store i64 %37, i64* %20, align 8
  br label %38

38:                                               ; preds = %30, %36, %34, %32
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %20, align 8
  %42 = call i32 @pcblist_kvm(i64 %39, i64 %40, i64 %41, i8** %13)
  store i32 %42, i32* %14, align 4
  br label %43

43:                                               ; preds = %38, %27
  %44 = load i32, i32* %14, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %157

47:                                               ; preds = %43
  %48 = load i32, i32* %14, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %160

51:                                               ; preds = %47
  %52 = load i8*, i8** %13, align 8
  %53 = bitcast i8* %52 to %struct.xunpgen*
  store %struct.xunpgen* %53, %struct.xunpgen** %17, align 8
  store %struct.xunpgen* %53, %struct.xunpgen** %18, align 8
  %54 = load %struct.xunpgen*, %struct.xunpgen** %17, align 8
  %55 = bitcast %struct.xunpgen* %54 to i8*
  %56 = load %struct.xunpgen*, %struct.xunpgen** %17, align 8
  %57 = getelementptr inbounds %struct.xunpgen, %struct.xunpgen* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %55, i64 %59
  %61 = bitcast i8* %60 to %struct.xunpgen*
  store %struct.xunpgen* %61, %struct.xunpgen** %17, align 8
  br label %62

62:                                               ; preds = %94, %51
  %63 = load %struct.xunpgen*, %struct.xunpgen** %17, align 8
  %64 = getelementptr inbounds %struct.xunpgen, %struct.xunpgen* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = icmp ugt i64 %66, 24
  br i1 %67, label %68, label %103

68:                                               ; preds = %62
  %69 = load %struct.xunpgen*, %struct.xunpgen** %17, align 8
  %70 = bitcast %struct.xunpgen* %69 to %struct.xunpcb*
  store %struct.xunpcb* %70, %struct.xunpcb** %19, align 8
  %71 = load %struct.xunpcb*, %struct.xunpcb** %19, align 8
  %72 = getelementptr inbounds %struct.xunpcb, %struct.xunpcb* %71, i32 0, i32 1
  store %struct.xsocket* %72, %struct.xsocket** %16, align 8
  %73 = load %struct.xunpcb*, %struct.xunpcb** %19, align 8
  %74 = getelementptr inbounds %struct.xunpcb, %struct.xunpcb* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.xunpgen*, %struct.xunpgen** %18, align 8
  %77 = getelementptr inbounds %struct.xunpgen, %struct.xunpgen* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp sgt i64 %75, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %68
  br label %94

81:                                               ; preds = %68
  %82 = load i32*, i32** %12, align 8
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = call i32 @xo_open_list(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %87 = load i32*, i32** %12, align 8
  store i32 0, i32* %87, align 4
  br label %88

88:                                               ; preds = %85, %81
  %89 = call i32 @xo_open_instance(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %90 = load %struct.xunpcb*, %struct.xunpcb** %19, align 8
  %91 = load %struct.xsocket*, %struct.xsocket** %16, align 8
  %92 = call i32 @unixdomainpr(%struct.xunpcb* %90, %struct.xsocket* %91)
  %93 = call i32 @xo_close_instance(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %94

94:                                               ; preds = %88, %80
  %95 = load %struct.xunpgen*, %struct.xunpgen** %17, align 8
  %96 = bitcast %struct.xunpgen* %95 to i8*
  %97 = load %struct.xunpgen*, %struct.xunpgen** %17, align 8
  %98 = getelementptr inbounds %struct.xunpgen, %struct.xunpgen* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %96, i64 %100
  %102 = bitcast i8* %101 to %struct.xunpgen*
  store %struct.xunpgen* %102, %struct.xunpgen** %17, align 8
  br label %62

103:                                              ; preds = %62
  %104 = load %struct.xunpgen*, %struct.xunpgen** %17, align 8
  %105 = load %struct.xunpgen*, %struct.xunpgen** %18, align 8
  %106 = icmp ne %struct.xunpgen* %104, %105
  br i1 %106, label %107, label %154

107:                                              ; preds = %103
  %108 = load %struct.xunpgen*, %struct.xunpgen** %17, align 8
  %109 = getelementptr inbounds %struct.xunpgen, %struct.xunpgen* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.xunpgen*, %struct.xunpgen** %18, align 8
  %112 = getelementptr inbounds %struct.xunpgen, %struct.xunpgen* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %110, %113
  br i1 %114, label %115, label %154

115:                                              ; preds = %107
  %116 = load %struct.xunpgen*, %struct.xunpgen** %18, align 8
  %117 = getelementptr inbounds %struct.xunpgen, %struct.xunpgen* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.xunpgen*, %struct.xunpgen** %17, align 8
  %120 = getelementptr inbounds %struct.xunpgen, %struct.xunpgen* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp sgt i64 %118, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %115
  %124 = load i32*, i32** @socktype, align 8
  %125 = load i32, i32* %15, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @xo_emit(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %128)
  br label %153

130:                                              ; preds = %115
  %131 = load %struct.xunpgen*, %struct.xunpgen** %18, align 8
  %132 = getelementptr inbounds %struct.xunpgen, %struct.xunpgen* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.xunpgen*, %struct.xunpgen** %17, align 8
  %135 = getelementptr inbounds %struct.xunpgen, %struct.xunpgen* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = icmp slt i64 %133, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %130
  %139 = load i32*, i32** @socktype, align 8
  %140 = load i32, i32* %15, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @xo_emit(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %143)
  br label %152

145:                                              ; preds = %130
  %146 = load i32*, i32** @socktype, align 8
  %147 = load i32, i32* %15, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @xo_emit(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i32 %150)
  br label %152

152:                                              ; preds = %145, %138
  br label %153

153:                                              ; preds = %152, %123
  br label %154

154:                                              ; preds = %153, %107, %103
  %155 = load i8*, i8** %13, align 8
  %156 = call i32 @free(i8* %155)
  br label %157

157:                                              ; preds = %154, %46
  %158 = load i32, i32* %15, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %15, align 4
  br label %21

160:                                              ; preds = %50, %21
  ret void
}

declare dso_local i32 @pcblist_sysctl(i32, i8**) #1

declare dso_local i32 @pcblist_kvm(i64, i64, i64, i8**) #1

declare dso_local i32 @xo_open_list(i8*) #1

declare dso_local i32 @xo_open_instance(i8*) #1

declare dso_local i32 @unixdomainpr(%struct.xunpcb*, %struct.xsocket*) #1

declare dso_local i32 @xo_close_instance(i8*) #1

declare dso_local i32 @xo_emit(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
