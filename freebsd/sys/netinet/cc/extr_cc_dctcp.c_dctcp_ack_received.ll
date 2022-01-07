; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_dctcp.c_dctcp_ack_received.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_dctcp.c_dctcp_ack_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.cc_var*, i64)* }
%struct.cc_var = type { i32, i32, %struct.dctcp* }
%struct.dctcp = type { i32, i32, i32, i32, i64 }

@t_flags = common dso_local global i32 0, align 4
@TF_ECN_PERMIT = common dso_local global i32 0, align 4
@newreno_cc_algo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CC_DUPACK = common dso_local global i64 0, align 8
@t_maxseg = common dso_local global i32 0, align 4
@CC_ACK = common dso_local global i64 0, align 8
@snd_recover = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cc_var*, i64)* @dctcp_ack_received to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dctcp_ack_received(%struct.cc_var* %0, i64 %1) #0 {
  %3 = alloca %struct.cc_var*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dctcp*, align 8
  %6 = alloca i32, align 4
  store %struct.cc_var* %0, %struct.cc_var** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.cc_var*, %struct.cc_var** %3, align 8
  %8 = getelementptr inbounds %struct.cc_var, %struct.cc_var* %7, i32 0, i32 2
  %9 = load %struct.dctcp*, %struct.dctcp** %8, align 8
  store %struct.dctcp* %9, %struct.dctcp** %5, align 8
  %10 = load %struct.cc_var*, %struct.cc_var** %3, align 8
  %11 = load i32, i32* @t_flags, align 4
  %12 = call i32 @CCV(%struct.cc_var* %10, i32 %11)
  %13 = load i32, i32* @TF_ECN_PERMIT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %158

16:                                               ; preds = %2
  %17 = load %struct.cc_var*, %struct.cc_var** %3, align 8
  %18 = load i32, i32* @t_flags, align 4
  %19 = call i32 @CCV(%struct.cc_var* %17, i32 %18)
  %20 = call i64 @IN_CONGRECOVERY(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %16
  %23 = load %struct.cc_var*, %struct.cc_var** %3, align 8
  %24 = load i32, i32* @t_flags, align 4
  %25 = call i32 @CCV(%struct.cc_var* %23, i32 %24)
  %26 = call i32 @EXIT_CONGRECOVERY(i32 %25)
  %27 = load i32 (%struct.cc_var*, i64)*, i32 (%struct.cc_var*, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @newreno_cc_algo, i32 0, i32 0), align 8
  %28 = load %struct.cc_var*, %struct.cc_var** %3, align 8
  %29 = load i64, i64* %4, align 8
  %30 = call i32 %27(%struct.cc_var* %28, i64 %29)
  %31 = load %struct.cc_var*, %struct.cc_var** %3, align 8
  %32 = load i32, i32* @t_flags, align 4
  %33 = call i32 @CCV(%struct.cc_var* %31, i32 %32)
  %34 = call i32 @ENTER_CONGRECOVERY(i32 %33)
  br label %40

35:                                               ; preds = %16
  %36 = load i32 (%struct.cc_var*, i64)*, i32 (%struct.cc_var*, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @newreno_cc_algo, i32 0, i32 0), align 8
  %37 = load %struct.cc_var*, %struct.cc_var** %3, align 8
  %38 = load i64, i64* %4, align 8
  %39 = call i32 %36(%struct.cc_var* %37, i64 %38)
  br label %40

40:                                               ; preds = %35, %22
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* @CC_DUPACK, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load %struct.cc_var*, %struct.cc_var** %3, align 8
  %46 = getelementptr inbounds %struct.cc_var, %struct.cc_var* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.cc_var*, %struct.cc_var** %3, align 8
  %49 = load i32, i32* @t_maxseg, align 4
  %50 = call i32 @CCV(%struct.cc_var* %48, i32 %49)
  %51 = call i32 @min(i32 %47, i32 %50)
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %44, %40
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* @CC_ACK, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load %struct.cc_var*, %struct.cc_var** %3, align 8
  %58 = getelementptr inbounds %struct.cc_var, %struct.cc_var* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %56, %52
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.dctcp*, %struct.dctcp** %5, align 8
  %63 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load %struct.dctcp*, %struct.dctcp** %5, align 8
  %67 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %100

70:                                               ; preds = %60
  %71 = load %struct.dctcp*, %struct.dctcp** %5, align 8
  %72 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %91, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.cc_var*, %struct.cc_var** %3, align 8
  %78 = load i32, i32* @t_maxseg, align 4
  %79 = call i32 @CCV(%struct.cc_var* %77, i32 %78)
  %80 = icmp sgt i32 %76, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %75
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.cc_var*, %struct.cc_var** %3, align 8
  %84 = load i32, i32* @t_maxseg, align 4
  %85 = call i32 @CCV(%struct.cc_var* %83, i32 %84)
  %86 = sub nsw i32 %82, %85
  %87 = load %struct.dctcp*, %struct.dctcp** %5, align 8
  %88 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, %86
  store i32 %90, i32* %88, align 8
  br label %97

91:                                               ; preds = %75, %70
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.dctcp*, %struct.dctcp** %5, align 8
  %94 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, %92
  store i32 %96, i32* %94, align 8
  br label %97

97:                                               ; preds = %91, %81
  %98 = load %struct.dctcp*, %struct.dctcp** %5, align 8
  %99 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %98, i32 0, i32 1
  store i32 1, i32* %99, align 4
  br label %122

100:                                              ; preds = %60
  %101 = load %struct.dctcp*, %struct.dctcp** %5, align 8
  %102 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %119

105:                                              ; preds = %100
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.cc_var*, %struct.cc_var** %3, align 8
  %108 = load i32, i32* @t_maxseg, align 4
  %109 = call i32 @CCV(%struct.cc_var* %107, i32 %108)
  %110 = icmp sgt i32 %106, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %105
  %112 = load %struct.cc_var*, %struct.cc_var** %3, align 8
  %113 = load i32, i32* @t_maxseg, align 4
  %114 = call i32 @CCV(%struct.cc_var* %112, i32 %113)
  %115 = load %struct.dctcp*, %struct.dctcp** %5, align 8
  %116 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, %114
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %111, %105, %100
  %120 = load %struct.dctcp*, %struct.dctcp** %5, align 8
  %121 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %120, i32 0, i32 1
  store i32 0, i32* %121, align 4
  br label %122

122:                                              ; preds = %119, %97
  %123 = load %struct.dctcp*, %struct.dctcp** %5, align 8
  %124 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %123, i32 0, i32 4
  store i64 0, i64* %124, align 8
  %125 = load %struct.cc_var*, %struct.cc_var** %3, align 8
  %126 = load i32, i32* @t_flags, align 4
  %127 = call i32 @CCV(%struct.cc_var* %125, i32 %126)
  %128 = call i64 @IN_FASTRECOVERY(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %122
  %131 = load %struct.cc_var*, %struct.cc_var** %3, align 8
  %132 = getelementptr inbounds %struct.cc_var, %struct.cc_var* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.cc_var*, %struct.cc_var** %3, align 8
  %135 = load i32, i32* @snd_recover, align 4
  %136 = call i32 @CCV(%struct.cc_var* %134, i32 %135)
  %137 = call i64 @SEQ_GEQ(i32 %133, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %154, label %139

139:                                              ; preds = %130, %122
  %140 = load %struct.cc_var*, %struct.cc_var** %3, align 8
  %141 = load i32, i32* @t_flags, align 4
  %142 = call i32 @CCV(%struct.cc_var* %140, i32 %141)
  %143 = call i64 @IN_FASTRECOVERY(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %157, label %145

145:                                              ; preds = %139
  %146 = load %struct.cc_var*, %struct.cc_var** %3, align 8
  %147 = getelementptr inbounds %struct.cc_var, %struct.cc_var* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.dctcp*, %struct.dctcp** %5, align 8
  %150 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @SEQ_GT(i32 %148, i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %145, %130
  %155 = load %struct.cc_var*, %struct.cc_var** %3, align 8
  %156 = call i32 @dctcp_update_alpha(%struct.cc_var* %155)
  br label %157

157:                                              ; preds = %154, %145, %139
  br label %163

158:                                              ; preds = %2
  %159 = load i32 (%struct.cc_var*, i64)*, i32 (%struct.cc_var*, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @newreno_cc_algo, i32 0, i32 0), align 8
  %160 = load %struct.cc_var*, %struct.cc_var** %3, align 8
  %161 = load i64, i64* %4, align 8
  %162 = call i32 %159(%struct.cc_var* %160, i64 %161)
  br label %163

163:                                              ; preds = %158, %157
  ret void
}

declare dso_local i32 @CCV(%struct.cc_var*, i32) #1

declare dso_local i64 @IN_CONGRECOVERY(i32) #1

declare dso_local i32 @EXIT_CONGRECOVERY(i32) #1

declare dso_local i32 @ENTER_CONGRECOVERY(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @IN_FASTRECOVERY(i32) #1

declare dso_local i64 @SEQ_GEQ(i32, i32) #1

declare dso_local i64 @SEQ_GT(i32, i32) #1

declare dso_local i32 @dctcp_update_alpha(%struct.cc_var*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
