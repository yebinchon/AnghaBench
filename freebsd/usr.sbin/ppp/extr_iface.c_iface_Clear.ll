; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_iface.c_iface_Clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_iface.c_iface_Clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iface = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ncp = type { i32 }

@IFACE_CLEAR_ALL = common dso_local global i32 0, align 4
@IFACE_SYSTEM = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@LogERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"iface_Clear: socket(): %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iface_Clear(%struct.iface* %0, %struct.ncp* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.iface*, align 8
  %6 = alloca %struct.ncp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.iface* %0, %struct.iface** %5, align 8
  store %struct.ncp* %1, %struct.ncp** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 -1, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  %16 = load %struct.iface*, %struct.iface** %5, align 8
  %17 = getelementptr inbounds %struct.iface, %struct.iface* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %162

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @IFACE_CLEAR_ALL, align 4
  %23 = icmp eq i32 %21, %22
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 0, i32 1
  store i32 %25, i32* %11, align 4
  store i32 %25, i32* %10, align 4
  store i32 0, i32* %15, align 4
  br label %26

26:                                               ; preds = %146, %20
  %27 = load i32, i32* %15, align 4
  %28 = load %struct.iface*, %struct.iface** %5, align 8
  %29 = getelementptr inbounds %struct.iface, %struct.iface* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %149

32:                                               ; preds = %26
  %33 = load %struct.iface*, %struct.iface** %5, align 8
  %34 = getelementptr inbounds %struct.iface, %struct.iface* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = load i32, i32* %15, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = call i32 @ncprange_family(i32* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %32
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %145

47:                                               ; preds = %43, %32
  %48 = load %struct.iface*, %struct.iface** %5, align 8
  %49 = getelementptr inbounds %struct.iface, %struct.iface* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = load i32, i32* %15, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %47
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @IFACE_SYSTEM, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %146

63:                                               ; preds = %57, %47
  %64 = load i32, i32* %9, align 4
  switch i32 %64, label %75 [
    i32 129, label %65
    i32 128, label %70
  ]

65:                                               ; preds = %63
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 0, i32* %10, align 4
  br label %146

69:                                               ; preds = %65
  store i32* %12, i32** %14, align 8
  br label %76

70:                                               ; preds = %63
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 0, i32* %11, align 4
  br label %146

74:                                               ; preds = %70
  store i32* %13, i32** %14, align 8
  br label %76

75:                                               ; preds = %63
  br label %146

76:                                               ; preds = %74, %69
  %77 = load i32*, i32** %14, align 8
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %91

80:                                               ; preds = %76
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @SOCK_DGRAM, align 4
  %83 = call i32 @ID0socket(i32 %81, i32 %82, i32 0)
  %84 = load i32*, i32** %14, align 8
  store i32 %83, i32* %84, align 4
  %85 = icmp eq i32 %83, -1
  br i1 %85, label %86, label %91

86:                                               ; preds = %80
  %87 = load i32, i32* @LogERROR, align 4
  %88 = load i32, i32* @errno, align 4
  %89 = call i32 @strerror(i32 %88)
  %90 = call i32 @log_Printf(i32 %87, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %89)
  br label %144

91:                                               ; preds = %80, %76
  %92 = load %struct.iface*, %struct.iface** %5, align 8
  %93 = getelementptr inbounds %struct.iface, %struct.iface* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.iface*, %struct.iface** %5, align 8
  %96 = getelementptr inbounds %struct.iface, %struct.iface* %95, i32 0, i32 1
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = load i32, i32* %15, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i64 %99
  %101 = load i32*, i32** %14, align 8
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @iface_addr_Zap(i32 %94, %struct.TYPE_5__* %100, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %143

105:                                              ; preds = %91
  %106 = load %struct.ncp*, %struct.ncp** %6, align 8
  %107 = load %struct.iface*, %struct.iface** %5, align 8
  %108 = getelementptr inbounds %struct.iface, %struct.iface* %107, i32 0, i32 1
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = load i32, i32* %15, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i64 %111
  %113 = call i32 @ncp_IfaceAddrDeleted(%struct.ncp* %106, %struct.TYPE_5__* %112)
  %114 = load %struct.iface*, %struct.iface** %5, align 8
  %115 = getelementptr inbounds %struct.iface, %struct.iface* %114, i32 0, i32 1
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = load i32, i32* %15, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i64 1
  %121 = load %struct.iface*, %struct.iface** %5, align 8
  %122 = getelementptr inbounds %struct.iface, %struct.iface* %121, i32 0, i32 1
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = load i32, i32* %15, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i64 %125
  %127 = load %struct.iface*, %struct.iface** %5, align 8
  %128 = getelementptr inbounds %struct.iface, %struct.iface* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %15, align 4
  %131 = sub i32 %129, %130
  %132 = sub i32 %131, 1
  %133 = zext i32 %132 to i64
  %134 = mul i64 %133, 8
  %135 = trunc i64 %134 to i32
  %136 = call i32 @bcopy(%struct.TYPE_5__* %120, %struct.TYPE_5__* %126, i32 %135)
  %137 = load %struct.iface*, %struct.iface** %5, align 8
  %138 = getelementptr inbounds %struct.iface, %struct.iface* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %139, -1
  store i32 %140, i32* %138, align 8
  %141 = load i32, i32* %15, align 4
  %142 = add i32 %141, -1
  store i32 %142, i32* %15, align 4
  br label %143

143:                                              ; preds = %105, %91
  br label %144

144:                                              ; preds = %143, %86
  br label %145

145:                                              ; preds = %144, %43
  br label %146

146:                                              ; preds = %145, %75, %73, %68, %62
  %147 = load i32, i32* %15, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %15, align 4
  br label %26

149:                                              ; preds = %26
  %150 = load i32, i32* %12, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load i32, i32* %12, align 4
  %154 = call i32 @close(i32 %153)
  br label %155

155:                                              ; preds = %152, %149
  %156 = load i32, i32* %13, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load i32, i32* %13, align 4
  %160 = call i32 @close(i32 %159)
  br label %161

161:                                              ; preds = %158, %155
  br label %162

162:                                              ; preds = %161, %4
  ret void
}

declare dso_local i32 @ncprange_family(i32*) #1

declare dso_local i32 @ID0socket(i32, i32, i32) #1

declare dso_local i32 @log_Printf(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @iface_addr_Zap(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @ncp_IfaceAddrDeleted(%struct.ncp*, %struct.TYPE_5__*) #1

declare dso_local i32 @bcopy(%struct.TYPE_5__*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
