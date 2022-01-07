; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ce/extr_tau32-ddk.c_cWGy25.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ce/extr_tau32-ddk.c_cWGy25.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@gQf6j1 = common dso_local global i32 0, align 4
@wTSMD1 = common dso_local global i32 0, align 4
@Wa6IF1 = common dso_local global i32 0, align 4
@KahAO3 = common dso_local global i32 0, align 4
@cy2jE4 = common dso_local global i32 0, align 4
@tXFTB4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @cWGy25 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cWGy25(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %1
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  call void asm sideeffect "lock; addl $$0,(%esp)", "~{cc},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %9
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !5
  call void asm sideeffect "lock; addl $$0,(%esp)", "~{cc},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !6
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !7
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  store i32 -1, i32* %18, align 4
  br label %19

19:                                               ; preds = %14
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !8
  call void asm sideeffect "lock; addl $$0,(%esp)", "~{cc},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !9
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !10
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @gQf6j1, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %19
  br label %31

29:                                               ; preds = %19
  %30 = load i32, i32* @wTSMD1, align 4
  store i32 %30, i32* %2, align 4
  br label %155

31:                                               ; preds = %28
  store i32 32, i32* %4, align 4
  br label %32

32:                                               ; preds = %104, %31
  store i32 0, i32* %7, align 4
  call void asm sideeffect "pushfl; popl $0; cli", "=*imr,~{dirflag},~{fpsr},~{flags}"(i64* %8) #2, !srcloc !11
  br label %33

33:                                               ; preds = %32
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !12
  call void asm sideeffect "lock; addl $$0,(%esp)", "~{cc},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !13
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !14
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 15597584, i32* %37, align 4
  br label %38

38:                                               ; preds = %56, %33
  br label %39

39:                                               ; preds = %38
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !15
  call void asm sideeffect "lock; addl $$0,(%esp)", "~{cc},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !16
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !17
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @gQf6j1, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %39
  br label %50

49:                                               ; preds = %39
  br label %58

50:                                               ; preds = %48
  %51 = load i32, i32* %7, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %7, align 4
  %55 = icmp ult i32 %54, 32
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %38

57:                                               ; preds = %53
  br label %58

58:                                               ; preds = %57, %49
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i32 0, i32* %62, align 4
  br label %63

63:                                               ; preds = %58
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !18
  call void asm sideeffect "lock; addl $$0,(%esp)", "~{cc},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !19
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !20
  %64 = load i32, i32* @gQf6j1, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  store i32 %64, i32* %68, align 4
  br label %69

69:                                               ; preds = %63
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !21
  call void asm sideeffect "lock; addl $$0,(%esp)", "~{cc},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !22
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !23
  %70 = load i64, i64* %8, align 8
  call void asm sideeffect "pushl $0; popfl", "imr,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %70) #2, !srcloc !24
  %71 = load i32, i32* %7, align 4
  %72 = icmp ult i32 %71, 4
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %7, align 4
  %75 = icmp uge i32 %74, 32
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  br label %87

77:                                               ; preds = %73, %69
  %78 = load i32, i32* %5, align 4
  %79 = icmp ugt i32 %78, 2
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  br label %83

81:                                               ; preds = %77
  %82 = load i32, i32* @Wa6IF1, align 4
  store i32 %82, i32* %2, align 4
  br label %155

83:                                               ; preds = %80
  %84 = load i32, i32* %5, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %83
  br label %88

87:                                               ; preds = %76
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %87, %86
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @gQf6j1, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %88
  br label %100

98:                                               ; preds = %88
  %99 = load i32, i32* @wTSMD1, align 4
  store i32 %99, i32* %2, align 4
  br label %155

100:                                              ; preds = %97
  %101 = load i32, i32* %4, align 4
  %102 = add i32 %101, -1
  store i32 %102, i32* %4, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %32

105:                                              ; preds = %100
  %106 = load i32, i32* @KahAO3, align 4
  %107 = call i64 @WdFDP4(i32 0, i32 0, i32 0, i32 0, i32 0, i32 %106)
  store i64 %107, i64* %6, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %109 = load i64, i64* %6, align 8
  %110 = call i32 @TifAa1(%struct.TYPE_6__* %108, i64 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %129

113:                                              ; preds = %105
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %115 = load i64, i64* %6, align 8
  %116 = call i32 @TifAa1(%struct.TYPE_6__* %114, i64 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  br label %128

119:                                              ; preds = %113
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %121 = load i64, i64* %6, align 8
  %122 = call i32 @TifAa1(%struct.TYPE_6__* %120, i64 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  br label %127

125:                                              ; preds = %119
  %126 = load i32, i32* @cy2jE4, align 4
  store i32 %126, i32* %2, align 4
  br label %155

127:                                              ; preds = %124
  br label %128

128:                                              ; preds = %127, %118
  br label %129

129:                                              ; preds = %128, %112
  %130 = load i32, i32* @KahAO3, align 4
  %131 = call i64 @WdFDP4(i32 0, i32 0, i32 0, i32 0, i32 1, i32 %130)
  store i64 %131, i64* %6, align 8
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %133 = load i64, i64* %6, align 8
  %134 = call i32 @TifAa1(%struct.TYPE_6__* %132, i64 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  br label %153

137:                                              ; preds = %129
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %139 = load i64, i64* %6, align 8
  %140 = call i32 @TifAa1(%struct.TYPE_6__* %138, i64 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %137
  br label %152

143:                                              ; preds = %137
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %145 = load i64, i64* %6, align 8
  %146 = call i32 @TifAa1(%struct.TYPE_6__* %144, i64 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  br label %151

149:                                              ; preds = %143
  %150 = load i32, i32* @cy2jE4, align 4
  store i32 %150, i32* %2, align 4
  br label %155

151:                                              ; preds = %148
  br label %152

152:                                              ; preds = %151, %142
  br label %153

153:                                              ; preds = %152, %136
  %154 = load i32, i32* @tXFTB4, align 4
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %153, %149, %125, %98, %81, %29
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local i64 @WdFDP4(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @TifAa1(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 699}
!3 = !{i32 723}
!4 = !{i32 775}
!5 = !{i32 851}
!6 = !{i32 874}
!7 = !{i32 926}
!8 = !{i32 1006}
!9 = !{i32 1030}
!10 = !{i32 1081}
!11 = !{i32 1265}
!12 = !{i32 1329}
!13 = !{i32 1353}
!14 = !{i32 1404}
!15 = !{i32 1495}
!16 = !{i32 1518}
!17 = !{i32 1570}
!18 = !{i32 1783}
!19 = !{i32 1807}
!20 = !{i32 1858}
!21 = !{i32 1940}
!22 = !{i32 1964}
!23 = !{i32 2016}
!24 = !{i32 2059}
