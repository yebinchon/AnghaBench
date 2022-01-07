; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_ifattach.c_in6_nigroup0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_ifattach.c_in6_nigroup0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.prison* }
%struct.prison = type { i8*, i32 }
%struct.ifnet = type { i32 }
%struct.in6_addr = type { i32*, i32*, i32* }

@curthread = common dso_local global %struct.TYPE_4__* null, align 8
@IPV6_ADDR_INT16_MLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i8*, i32, %struct.in6_addr*, i32)* @in6_nigroup0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in6_nigroup0(%struct.ifnet* %0, i8* %1, i32 %2, %struct.in6_addr* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.in6_addr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.prison*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.in6_addr, align 8
  %16 = alloca [16 x i32], align 16
  %17 = alloca i8, align 1
  %18 = alloca [64 x i8], align 16
  store %struct.ifnet* %0, %struct.ifnet** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.in6_addr* %3, %struct.in6_addr** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %38, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curthread, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.prison*, %struct.prison** %28, align 8
  store %struct.prison* %29, %struct.prison** %12, align 8
  %30 = load %struct.prison*, %struct.prison** %12, align 8
  %31 = getelementptr inbounds %struct.prison, %struct.prison* %30, i32 0, i32 1
  %32 = call i32 @mtx_lock(i32* %31)
  %33 = load %struct.prison*, %struct.prison** %12, align 8
  %34 = getelementptr inbounds %struct.prison, %struct.prison* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %8, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @strlen(i8* %36)
  store i32 %37, i32* %9, align 4
  br label %39

38:                                               ; preds = %21, %5
  store %struct.prison* null, %struct.prison** %12, align 8
  br label %39

39:                                               ; preds = %38, %24
  %40 = load i8*, i8** %8, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %42, %39
  %46 = load %struct.prison*, %struct.prison** %12, align 8
  %47 = icmp ne %struct.prison* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load %struct.prison*, %struct.prison** %12, align 8
  %50 = getelementptr inbounds %struct.prison, %struct.prison* %49, i32 0, i32 1
  %51 = call i32 @mtx_unlock(i32* %50)
  br label %52

52:                                               ; preds = %48, %45
  store i32 -1, i32* %6, align 4
  br label %197

53:                                               ; preds = %42
  %54 = load i8*, i8** %8, align 8
  store i8* %54, i8** %13, align 8
  br label %55

55:                                               ; preds = %79, %53
  %56 = load i8*, i8** %13, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %77

58:                                               ; preds = %55
  %59 = load i8*, i8** %13, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %58
  %64 = load i8*, i8** %13, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 46
  br i1 %67, label %68, label %77

68:                                               ; preds = %63
  %69 = load i8*, i8** %13, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = ptrtoint i8* %69 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = icmp slt i64 %73, %75
  br label %77

77:                                               ; preds = %68, %63, %58, %55
  %78 = phi i1 [ false, %63 ], [ false, %58 ], [ false, %55 ], [ %76, %68 ]
  br i1 %78, label %79, label %82

79:                                               ; preds = %77
  %80 = load i8*, i8** %13, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %13, align 8
  br label %55

82:                                               ; preds = %77
  %83 = load i8*, i8** %13, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = icmp eq i8* %83, %84
  br i1 %85, label %93, label %86

86:                                               ; preds = %82
  %87 = load i8*, i8** %13, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = ptrtoint i8* %87 to i64
  %90 = ptrtoint i8* %88 to i64
  %91 = sub i64 %89, %90
  %92 = icmp ugt i64 %91, 63
  br i1 %92, label %93, label %101

93:                                               ; preds = %86, %82
  %94 = load %struct.prison*, %struct.prison** %12, align 8
  %95 = icmp ne %struct.prison* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load %struct.prison*, %struct.prison** %12, align 8
  %98 = getelementptr inbounds %struct.prison, %struct.prison* %97, i32 0, i32 1
  %99 = call i32 @mtx_unlock(i32* %98)
  br label %100

100:                                              ; preds = %96, %93
  store i32 -1, i32* %6, align 4
  br label %197

101:                                              ; preds = %86
  %102 = load i8*, i8** %13, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = ptrtoint i8* %102 to i64
  %105 = ptrtoint i8* %103 to i64
  %106 = sub i64 %104, %105
  %107 = trunc i64 %106 to i8
  store i8 %107, i8* %17, align 1
  %108 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %109 = load i8*, i8** %8, align 8
  %110 = load i8, i8* %17, align 1
  %111 = call i32 @strncpy(i8* %108, i8* %109, i8 signext %110)
  %112 = load %struct.prison*, %struct.prison** %12, align 8
  %113 = icmp ne %struct.prison* %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %101
  %115 = load %struct.prison*, %struct.prison** %12, align 8
  %116 = getelementptr inbounds %struct.prison, %struct.prison* %115, i32 0, i32 1
  %117 = call i32 @mtx_unlock(i32* %116)
  br label %118

118:                                              ; preds = %114, %101
  %119 = load i8, i8* %17, align 1
  %120 = sext i8 %119 to i32
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 %121
  store i8 0, i8* %122, align 1
  %123 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  store i8* %123, i8** %14, align 8
  br label %124

124:                                              ; preds = %147, %118
  %125 = load i8*, i8** %14, align 8
  %126 = load i8, i8* %125, align 1
  %127 = icmp ne i8 %126, 0
  br i1 %127, label %128, label %150

128:                                              ; preds = %124
  %129 = load i8*, i8** %14, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp sle i32 65, %131
  br i1 %132, label %133, label %146

133:                                              ; preds = %128
  %134 = load i8*, i8** %14, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp sle i32 %136, 90
  br i1 %137, label %138, label %146

138:                                              ; preds = %133
  %139 = load i8*, i8** %14, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = sub nsw i32 %141, 65
  %143 = add nsw i32 %142, 97
  %144 = trunc i32 %143 to i8
  %145 = load i8*, i8** %14, align 8
  store i8 %144, i8* %145, align 1
  br label %146

146:                                              ; preds = %138, %133, %128
  br label %147

147:                                              ; preds = %146
  %148 = load i8*, i8** %14, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %14, align 8
  br label %124

150:                                              ; preds = %124
  %151 = call i32 @bzero(%struct.in6_addr* %15, i32 24)
  %152 = call i32 @MD5Init(%struct.in6_addr* %15)
  %153 = call i32 @MD5Update(%struct.in6_addr* %15, i8* %17, i8 signext 1)
  %154 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %155 = load i8, i8* %17, align 1
  %156 = call i32 @MD5Update(%struct.in6_addr* %15, i8* %154, i8 signext %155)
  %157 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  %158 = call i32 @MD5Final(i32* %157, %struct.in6_addr* %15)
  %159 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %160 = call i32 @bzero(%struct.in6_addr* %159, i32 24)
  %161 = load i32, i32* @IPV6_ADDR_INT16_MLL, align 4
  %162 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %163 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  store i32 %161, i32* %165, align 4
  %166 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %167 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 11
  store i32 2, i32* %169, align 4
  %170 = load i32, i32* %11, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %183

172:                                              ; preds = %150
  %173 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %174 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 12
  store i32 255, i32* %176, align 4
  %177 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  %178 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %179 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 13
  %182 = call i32 @bcopy(i32* %177, i32* %181, i32 3)
  br label %190

183:                                              ; preds = %150
  %184 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  %185 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %186 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 3
  %189 = call i32 @bcopy(i32* %184, i32* %188, i32 4)
  br label %190

190:                                              ; preds = %183, %172
  %191 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %192 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %193 = call i64 @in6_setscope(%struct.in6_addr* %191, %struct.ifnet* %192, i32* null)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %190
  store i32 -1, i32* %6, align 4
  br label %197

196:                                              ; preds = %190
  store i32 0, i32* %6, align 4
  br label %197

197:                                              ; preds = %196, %195, %100, %52
  %198 = load i32, i32* %6, align 4
  ret i32 %198
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @strncpy(i8*, i8*, i8 signext) #1

declare dso_local i32 @bzero(%struct.in6_addr*, i32) #1

declare dso_local i32 @MD5Init(%struct.in6_addr*) #1

declare dso_local i32 @MD5Update(%struct.in6_addr*, i8*, i8 signext) #1

declare dso_local i32 @MD5Final(i32*, %struct.in6_addr*) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i64 @in6_setscope(%struct.in6_addr*, %struct.ifnet*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
