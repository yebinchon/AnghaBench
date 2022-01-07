; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sed/extr_process.c_applies.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sed/extr_process.c_applies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_command = type { i64, i64, %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@lastaddr = common dso_local global i32 0, align 4
@linenum = common dso_local global i64 0, align 8
@AT_LINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s_command*)* @applies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @applies(%struct.s_command* %0) #0 {
  %2 = alloca %struct.s_command*, align 8
  %3 = alloca i32, align 4
  store %struct.s_command* %0, %struct.s_command** %2, align 8
  store i32 0, i32* @lastaddr, align 4
  %4 = load %struct.s_command*, %struct.s_command** %2, align 8
  %5 = getelementptr inbounds %struct.s_command, %struct.s_command* %4, i32 0, i32 2
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = icmp eq %struct.TYPE_4__* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.s_command*, %struct.s_command** %2, align 8
  %10 = getelementptr inbounds %struct.s_command, %struct.s_command* %9, i32 0, i32 3
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = icmp eq %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store i32 1, i32* %3, align 4
  br label %139

14:                                               ; preds = %8, %1
  %15 = load %struct.s_command*, %struct.s_command** %2, align 8
  %16 = getelementptr inbounds %struct.s_command, %struct.s_command* %15, i32 0, i32 3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %19, label %133

19:                                               ; preds = %14
  %20 = load %struct.s_command*, %struct.s_command** %2, align 8
  %21 = getelementptr inbounds %struct.s_command, %struct.s_command* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %81

24:                                               ; preds = %19
  %25 = load %struct.s_command*, %struct.s_command** %2, align 8
  %26 = getelementptr inbounds %struct.s_command, %struct.s_command* %25, i32 0, i32 3
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %48 [
    i32 128, label %30
  ]

30:                                               ; preds = %24
  %31 = load i64, i64* @linenum, align 8
  %32 = load %struct.s_command*, %struct.s_command** %2, align 8
  %33 = getelementptr inbounds %struct.s_command, %struct.s_command* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %31, %34
  %36 = load %struct.s_command*, %struct.s_command** %2, align 8
  %37 = getelementptr inbounds %struct.s_command, %struct.s_command* %36, i32 0, i32 3
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sle i64 %35, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %47

44:                                               ; preds = %30
  %45 = load %struct.s_command*, %struct.s_command** %2, align 8
  %46 = getelementptr inbounds %struct.s_command, %struct.s_command* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %44, %43
  br label %80

48:                                               ; preds = %24
  %49 = load %struct.s_command*, %struct.s_command** %2, align 8
  %50 = getelementptr inbounds %struct.s_command, %struct.s_command* %49, i32 0, i32 3
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = call i32 @MATCH(%struct.TYPE_4__* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load %struct.s_command*, %struct.s_command** %2, align 8
  %56 = getelementptr inbounds %struct.s_command, %struct.s_command* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  store i32 1, i32* @lastaddr, align 4
  store i32 1, i32* %3, align 4
  br label %79

57:                                               ; preds = %48
  %58 = load %struct.s_command*, %struct.s_command** %2, align 8
  %59 = getelementptr inbounds %struct.s_command, %struct.s_command* %58, i32 0, i32 3
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @AT_LINE, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %57
  %66 = load i64, i64* @linenum, align 8
  %67 = load %struct.s_command*, %struct.s_command** %2, align 8
  %68 = getelementptr inbounds %struct.s_command, %struct.s_command* %67, i32 0, i32 3
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %66, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %65
  %75 = load %struct.s_command*, %struct.s_command** %2, align 8
  %76 = getelementptr inbounds %struct.s_command, %struct.s_command* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  store i32 0, i32* %3, align 4
  br label %78

77:                                               ; preds = %65, %57
  store i32 1, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %74
  br label %79

79:                                               ; preds = %78, %54
  br label %80

80:                                               ; preds = %79, %47
  br label %132

81:                                               ; preds = %19
  %82 = load %struct.s_command*, %struct.s_command** %2, align 8
  %83 = getelementptr inbounds %struct.s_command, %struct.s_command* %82, i32 0, i32 2
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = icmp ne %struct.TYPE_4__* %84, null
  br i1 %85, label %86, label %130

86:                                               ; preds = %81
  %87 = load %struct.s_command*, %struct.s_command** %2, align 8
  %88 = getelementptr inbounds %struct.s_command, %struct.s_command* %87, i32 0, i32 2
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = call i32 @MATCH(%struct.TYPE_4__* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %130

92:                                               ; preds = %86
  %93 = load %struct.s_command*, %struct.s_command** %2, align 8
  %94 = getelementptr inbounds %struct.s_command, %struct.s_command* %93, i32 0, i32 3
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @AT_LINE, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %92
  %101 = load i64, i64* @linenum, align 8
  %102 = load %struct.s_command*, %struct.s_command** %2, align 8
  %103 = getelementptr inbounds %struct.s_command, %struct.s_command* %102, i32 0, i32 3
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp sge i64 %101, %107
  br i1 %108, label %124, label %109

109:                                              ; preds = %100, %92
  %110 = load %struct.s_command*, %struct.s_command** %2, align 8
  %111 = getelementptr inbounds %struct.s_command, %struct.s_command* %110, i32 0, i32 3
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %114, 128
  br i1 %115, label %116, label %125

116:                                              ; preds = %109
  %117 = load %struct.s_command*, %struct.s_command** %2, align 8
  %118 = getelementptr inbounds %struct.s_command, %struct.s_command* %117, i32 0, i32 3
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %116, %100
  store i32 1, i32* @lastaddr, align 4
  br label %129

125:                                              ; preds = %116, %109
  %126 = load i64, i64* @linenum, align 8
  %127 = load %struct.s_command*, %struct.s_command** %2, align 8
  %128 = getelementptr inbounds %struct.s_command, %struct.s_command* %127, i32 0, i32 0
  store i64 %126, i64* %128, align 8
  br label %129

129:                                              ; preds = %125, %124
  store i32 1, i32* %3, align 4
  br label %131

130:                                              ; preds = %86, %81
  store i32 0, i32* %3, align 4
  br label %131

131:                                              ; preds = %130, %129
  br label %132

132:                                              ; preds = %131, %80
  br label %138

133:                                              ; preds = %14
  %134 = load %struct.s_command*, %struct.s_command** %2, align 8
  %135 = getelementptr inbounds %struct.s_command, %struct.s_command* %134, i32 0, i32 2
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = call i32 @MATCH(%struct.TYPE_4__* %136)
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %133, %132
  br label %139

139:                                              ; preds = %138, %13
  %140 = load %struct.s_command*, %struct.s_command** %2, align 8
  %141 = getelementptr inbounds %struct.s_command, %struct.s_command* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %139
  %145 = load i32, i32* %3, align 4
  %146 = icmp ne i32 %145, 0
  %147 = xor i1 %146, true
  %148 = zext i1 %147 to i32
  br label %151

149:                                              ; preds = %139
  %150 = load i32, i32* %3, align 4
  br label %151

151:                                              ; preds = %149, %144
  %152 = phi i32 [ %148, %144 ], [ %150, %149 ]
  ret i32 %152
}

declare dso_local i32 @MATCH(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
