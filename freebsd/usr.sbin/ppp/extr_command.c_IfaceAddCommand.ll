; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_IfaceAddCommand.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_IfaceAddCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.ncpaddr = type { i32 }
%struct.ncprange = type { i32 }
%struct.in_addr = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"IfaceAddCommand: src and dst address families differ\0A\00", align 1
@IFACE_ADD_LAST = common dso_local global i32 0, align 4
@IFACE_FORCE_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdargs*)* @IfaceAddCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IfaceAddCommand(%struct.cmdargs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmdargs*, align 8
  %4 = alloca %struct.ncpaddr, align 4
  %5 = alloca %struct.ncpaddr, align 4
  %6 = alloca %struct.ncprange, align 4
  %7 = alloca %struct.in_addr, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cmdargs* %0, %struct.cmdargs** %3, align 8
  %10 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %11 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %14 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  %17 = icmp eq i32 %12, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %1
  %19 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %20 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %19, i32 0, i32 4
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %23 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %21, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ncprange_aton(%struct.ncprange* %6, i32* null, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %18
  store i32 -1, i32* %2, align 4
  br label %161

31:                                               ; preds = %18
  %32 = call i32 @ncpaddr_init(%struct.ncpaddr* %4)
  br label %134

33:                                               ; preds = %1
  %34 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %35 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %38 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 2
  %41 = icmp eq i32 %36, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %33
  %43 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %44 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %43, i32 0, i32 4
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %47 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ncprange_aton(%struct.ncprange* %6, i32* null, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %42
  store i32 -1, i32* %2, align 4
  br label %161

55:                                               ; preds = %42
  store i32 1, i32* %8, align 4
  br label %111

56:                                               ; preds = %33
  %57 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %58 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %61 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 3
  %64 = icmp eq i32 %59, %63
  br i1 %64, label %65, label %109

65:                                               ; preds = %56
  %66 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %67 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %66, i32 0, i32 4
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %70 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ncpaddr_aton(%struct.ncpaddr* %5, i32* null, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %65
  store i32 -1, i32* %2, align 4
  br label %161

78:                                               ; preds = %65
  %79 = call i64 @ncpaddr_family(%struct.ncpaddr* %5)
  %80 = load i64, i64* @AF_INET, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 -1, i32* %2, align 4
  br label %161

83:                                               ; preds = %78
  %84 = call i32 @ncprange_sethost(%struct.ncprange* %6, %struct.ncpaddr* %5)
  %85 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %86 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %85, i32 0, i32 4
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %89 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %87, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @ncpaddr_aton(%struct.ncpaddr* %5, i32* null, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %83
  store i32 -1, i32* %2, align 4
  br label %161

98:                                               ; preds = %83
  %99 = call i32 @ncpaddr_getip4(%struct.ncpaddr* %5, %struct.in_addr* %7)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %98
  store i32 -1, i32* %2, align 4
  br label %161

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %7, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @ncprange_setip4mask(%struct.ncprange* %6, i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %102
  store i32 -1, i32* %2, align 4
  br label %161

108:                                              ; preds = %102
  store i32 2, i32* %8, align 4
  br label %110

109:                                              ; preds = %56
  store i32 -1, i32* %2, align 4
  br label %161

110:                                              ; preds = %108
  br label %111

111:                                              ; preds = %110, %55
  %112 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %113 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %112, i32 0, i32 4
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %116 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %117, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %114, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @ncpaddr_aton(%struct.ncpaddr* %4, i32* null, i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %111
  store i32 -1, i32* %2, align 4
  br label %161

126:                                              ; preds = %111
  %127 = call i64 @ncprange_family(%struct.ncprange* %6)
  %128 = call i64 @ncpaddr_family(%struct.ncpaddr* %4)
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = load i32, i32* @LogWARN, align 4
  %132 = call i32 @log_Printf(i32 %131, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %161

133:                                              ; preds = %126
  br label %134

134:                                              ; preds = %133, %31
  %135 = load i32, i32* @IFACE_ADD_LAST, align 4
  store i32 %135, i32* %9, align 4
  %136 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %137 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %136, i32 0, i32 3
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %134
  %143 = load i32, i32* @IFACE_FORCE_ADD, align 4
  %144 = load i32, i32* %9, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %9, align 4
  br label %146

146:                                              ; preds = %142, %134
  %147 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %148 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %147, i32 0, i32 2
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %153 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %152, i32 0, i32 2
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32, i32* %9, align 4
  %157 = call i32 @iface_Add(i32 %151, i32* %155, %struct.ncprange* %6, %struct.ncpaddr* %4, i32 %156)
  %158 = icmp ne i32 %157, 0
  %159 = xor i1 %158, true
  %160 = zext i1 %159 to i32
  store i32 %160, i32* %2, align 4
  br label %161

161:                                              ; preds = %146, %130, %125, %109, %107, %101, %97, %82, %77, %54, %30
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local i32 @ncprange_aton(%struct.ncprange*, i32*, i32) #1

declare dso_local i32 @ncpaddr_init(%struct.ncpaddr*) #1

declare dso_local i32 @ncpaddr_aton(%struct.ncpaddr*, i32*, i32) #1

declare dso_local i64 @ncpaddr_family(%struct.ncpaddr*) #1

declare dso_local i32 @ncprange_sethost(%struct.ncprange*, %struct.ncpaddr*) #1

declare dso_local i32 @ncpaddr_getip4(%struct.ncpaddr*, %struct.in_addr*) #1

declare dso_local i32 @ncprange_setip4mask(%struct.ncprange*, i32) #1

declare dso_local i64 @ncprange_family(%struct.ncprange*) #1

declare dso_local i32 @log_Printf(i32, i8*) #1

declare dso_local i32 @iface_Add(i32, i32*, %struct.ncprange*, %struct.ncpaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
