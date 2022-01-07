; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/atm/extr_ngatmbase.c_uni_msg_pack_mbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/atm/extr_ngatmbase.c_uni_msg_pack_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i64, %struct.TYPE_2__, i32, %struct.mbuf* }
%struct.TYPE_2__ = type { i64 }
%struct.uni_msg = type { i8* }

@M_NOWAIT = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@MHLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"uni_msg_pack_mbuf: hdrlen > MHLEN\00", align 1
@MCLBYTES = common dso_local global i64 0, align 8
@MLEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @uni_msg_pack_mbuf(%struct.uni_msg* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.uni_msg*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca i64, align 8
  store %struct.uni_msg* %0, %struct.uni_msg** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %13 = load i32, i32* @M_NOWAIT, align 4
  %14 = load i32, i32* @MT_DATA, align 4
  %15 = call i32 @MGETHDR(%struct.mbuf* %12, i32 %13, i32 %14)
  %16 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %17 = icmp eq %struct.mbuf* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store %struct.mbuf* null, %struct.mbuf** %4, align 8
  br label %148

19:                                               ; preds = %3
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @MHLEN, align 8
  %22 = icmp ule i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @KASSERT(i32 %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %25 = load i64, i64* %7, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %19
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %30 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @bcopy(i8* %28, i32 %31, i64 %32)
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %36 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %39 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i64 %37, i64* %40, align 8
  br label %80

41:                                               ; preds = %19
  %42 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %43 = call i64 @uni_msg_len(%struct.uni_msg* %42)
  store i64 %43, i64* %11, align 8
  %44 = load i64, i64* @MHLEN, align 8
  %45 = icmp ugt i64 %43, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %41
  %47 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %48 = load i32, i32* @M_NOWAIT, align 4
  %49 = call i32 @MCLGET(%struct.mbuf* %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %145

52:                                               ; preds = %46
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* @MCLBYTES, align 8
  %55 = icmp ugt i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i64, i64* @MCLBYTES, align 8
  store i64 %57, i64* %11, align 8
  br label %58

58:                                               ; preds = %56, %52
  br label %59

59:                                               ; preds = %58, %41
  %60 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %61 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %64 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i64, i64* %11, align 8
  %67 = call i32 @bcopy(i8* %62, i32 %65, i64 %66)
  %68 = load i64, i64* %11, align 8
  %69 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %70 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr i8, i8* %71, i64 %68
  store i8* %72, i8** %70, align 8
  %73 = load i64, i64* %11, align 8
  %74 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %75 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load i64, i64* %11, align 8
  %77 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %78 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i64 %76, i64* %79, align 8
  br label %80

80:                                               ; preds = %59, %27
  %81 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  store %struct.mbuf* %81, %struct.mbuf** %10, align 8
  br label %82

82:                                               ; preds = %120, %80
  %83 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %84 = icmp ne %struct.uni_msg* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %87 = call i64 @uni_msg_len(%struct.uni_msg* %86)
  store i64 %87, i64* %11, align 8
  %88 = icmp ne i64 %87, 0
  br label %89

89:                                               ; preds = %85, %82
  %90 = phi i1 [ false, %82 ], [ %88, %85 ]
  br i1 %90, label %91, label %143

91:                                               ; preds = %89
  %92 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %93 = load i32, i32* @M_NOWAIT, align 4
  %94 = load i32, i32* @MT_DATA, align 4
  %95 = call i32 @MGET(%struct.mbuf* %92, i32 %93, i32 %94)
  %96 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %97 = icmp eq %struct.mbuf* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  br label %145

99:                                               ; preds = %91
  %100 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %101 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %102 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %101, i32 0, i32 3
  store %struct.mbuf* %100, %struct.mbuf** %102, align 8
  %103 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  store %struct.mbuf* %103, %struct.mbuf** %10, align 8
  %104 = load i64, i64* %11, align 8
  %105 = load i64, i64* @MLEN, align 8
  %106 = icmp ugt i64 %104, %105
  br i1 %106, label %107, label %120

107:                                              ; preds = %99
  %108 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %109 = load i32, i32* @M_NOWAIT, align 4
  %110 = call i32 @MCLGET(%struct.mbuf* %108, i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %107
  br label %145

113:                                              ; preds = %107
  %114 = load i64, i64* %11, align 8
  %115 = load i64, i64* @MCLBYTES, align 8
  %116 = icmp ugt i64 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = load i64, i64* @MCLBYTES, align 8
  store i64 %118, i64* %11, align 8
  br label %119

119:                                              ; preds = %117, %113
  br label %120

120:                                              ; preds = %119, %99
  %121 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %122 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %125 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i64, i64* %11, align 8
  %128 = call i32 @bcopy(i8* %123, i32 %126, i64 %127)
  %129 = load i64, i64* %11, align 8
  %130 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %131 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = getelementptr i8, i8* %132, i64 %129
  store i8* %133, i8** %131, align 8
  %134 = load i64, i64* %11, align 8
  %135 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %136 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %135, i32 0, i32 0
  store i64 %134, i64* %136, align 8
  %137 = load i64, i64* %11, align 8
  %138 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %139 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = add i64 %141, %137
  store i64 %142, i64* %140, align 8
  br label %82

143:                                              ; preds = %89
  %144 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  store %struct.mbuf* %144, %struct.mbuf** %4, align 8
  br label %148

145:                                              ; preds = %112, %98, %51
  %146 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %147 = call i32 @m_freem(%struct.mbuf* %146)
  store %struct.mbuf* null, %struct.mbuf** %4, align 8
  br label %148

148:                                              ; preds = %145, %143, %18
  %149 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  ret %struct.mbuf* %149
}

declare dso_local i32 @MGETHDR(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bcopy(i8*, i32, i64) #1

declare dso_local i64 @uni_msg_len(%struct.uni_msg*) #1

declare dso_local i32 @MCLGET(%struct.mbuf*, i32) #1

declare dso_local i32 @MGET(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
