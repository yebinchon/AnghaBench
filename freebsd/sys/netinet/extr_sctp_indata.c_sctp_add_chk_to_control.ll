; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_indata.c_sctp_add_chk_to_control.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_indata.c_sctp_add_chk_to_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_queued_to_read = type { i32, i64, i32, i32, i64, i64, i32, i32, i32, i32* }
%struct.sctp_stream_in = type { i32, i32, i64 }
%struct.sctp_tcb = type { i32 }
%struct.sctp_association = type { i32, i32, i32 }
%struct.sctp_tmit_chunk = type { %struct.TYPE_4__, i32*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@SCTP_DATA_FIRST_FRAG = common dso_local global i32 0, align 4
@SCTP_DATA_LAST_FRAG = common dso_local global i32 0, align 4
@SCTP_ON_UNORDERED = common dso_local global i64 0, align 8
@next_instrm = common dso_local global i32 0, align 4
@SCTP_ON_ORDERED = common dso_local global i64 0, align 8
@SCTP_SO_NOT_LOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_add_chk_to_control(%struct.sctp_queued_to_read* %0, %struct.sctp_stream_in* %1, %struct.sctp_tcb* %2, %struct.sctp_association* %3, %struct.sctp_tmit_chunk* %4, i32 %5) #0 {
  %7 = alloca %struct.sctp_queued_to_read*, align 8
  %8 = alloca %struct.sctp_stream_in*, align 8
  %9 = alloca %struct.sctp_tcb*, align 8
  %10 = alloca %struct.sctp_association*, align 8
  %11 = alloca %struct.sctp_tmit_chunk*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sctp_queued_to_read* %0, %struct.sctp_queued_to_read** %7, align 8
  store %struct.sctp_stream_in* %1, %struct.sctp_stream_in** %8, align 8
  store %struct.sctp_tcb* %2, %struct.sctp_tcb** %9, align 8
  store %struct.sctp_association* %3, %struct.sctp_association** %10, align 8
  store %struct.sctp_tmit_chunk* %4, %struct.sctp_tmit_chunk** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %7, align 8
  %16 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %6
  %20 = load i32, i32* %12, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load %struct.sctp_tcb*, %struct.sctp_tcb** %9, align 8
  %24 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @SCTP_INP_READ_LOCK(i32 %25)
  store i32 1, i32* %14, align 4
  br label %27

27:                                               ; preds = %22, %19, %6
  %28 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %7, align 8
  %29 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %28, i32 0, i32 9
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %11, align 8
  %34 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %7, align 8
  %37 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %36, i32 0, i32 9
  store i32* %35, i32** %37, align 8
  %38 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %7, align 8
  %39 = call i32 @sctp_setup_tail_pointer(%struct.sctp_queued_to_read* %38)
  br label %46

40:                                               ; preds = %27
  %41 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %7, align 8
  %42 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %11, align 8
  %43 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @sctp_add_to_tail_pointer(%struct.sctp_queued_to_read* %41, i32* %44, i32* %13)
  br label %46

46:                                               ; preds = %40, %32
  %47 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %11, align 8
  %48 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %7, align 8
  %53 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %52, i32 0, i32 8
  store i32 %51, i32* %53, align 8
  %54 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %11, align 8
  %55 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.sctp_association*, %struct.sctp_association** %10, align 8
  %58 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = sub nsw i64 %60, %56
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %58, align 4
  %63 = load %struct.sctp_association*, %struct.sctp_association** %10, align 8
  %64 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @sctp_ucount_decr(i32 %65)
  %67 = load %struct.sctp_association*, %struct.sctp_association** %10, align 8
  %68 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %11, align 8
  %69 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @sctp_mark_non_revokable(%struct.sctp_association* %67, i32 %72)
  %74 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %11, align 8
  %75 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %74, i32 0, i32 1
  store i32* null, i32** %75, align 8
  %76 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %11, align 8
  %77 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @SCTP_DATA_FIRST_FRAG, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %46
  %85 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %7, align 8
  %86 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  %87 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %11, align 8
  %88 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %7, align 8
  %93 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %92, i32 0, i32 7
  store i32 %91, i32* %93, align 4
  %94 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %11, align 8
  %95 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %7, align 8
  %100 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %99, i32 0, i32 6
  store i32 %98, i32* %100, align 8
  br label %101

101:                                              ; preds = %84, %46
  %102 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %11, align 8
  %103 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @SCTP_DATA_LAST_FRAG, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %169

110:                                              ; preds = %101
  %111 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %7, align 8
  %112 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %164

115:                                              ; preds = %110
  %116 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %7, align 8
  %117 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %116, i32 0, i32 5
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %164

120:                                              ; preds = %115
  %121 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %7, align 8
  %122 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %7, align 8
  %127 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %126, i32 0, i32 4
  store i64 0, i64* %127, align 8
  %128 = load %struct.sctp_stream_in*, %struct.sctp_stream_in** %8, align 8
  %129 = getelementptr inbounds %struct.sctp_stream_in, %struct.sctp_stream_in* %128, i32 0, i32 2
  store i64 0, i64* %129, align 8
  br label %130

130:                                              ; preds = %125, %120
  %131 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %7, align 8
  %132 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @SCTP_ON_UNORDERED, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %144

136:                                              ; preds = %130
  %137 = load %struct.sctp_stream_in*, %struct.sctp_stream_in** %8, align 8
  %138 = getelementptr inbounds %struct.sctp_stream_in, %struct.sctp_stream_in* %137, i32 0, i32 1
  %139 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %7, align 8
  %140 = load i32, i32* @next_instrm, align 4
  %141 = call i32 @TAILQ_REMOVE(i32* %138, %struct.sctp_queued_to_read* %139, i32 %140)
  %142 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %7, align 8
  %143 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %142, i32 0, i32 1
  store i64 0, i64* %143, align 8
  br label %163

144:                                              ; preds = %130
  %145 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %7, align 8
  %146 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @SCTP_ON_ORDERED, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %162

150:                                              ; preds = %144
  %151 = load %struct.sctp_stream_in*, %struct.sctp_stream_in** %8, align 8
  %152 = getelementptr inbounds %struct.sctp_stream_in, %struct.sctp_stream_in* %151, i32 0, i32 0
  %153 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %7, align 8
  %154 = load i32, i32* @next_instrm, align 4
  %155 = call i32 @TAILQ_REMOVE(i32* %152, %struct.sctp_queued_to_read* %153, i32 %154)
  %156 = load %struct.sctp_association*, %struct.sctp_association** %10, align 8
  %157 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @sctp_ucount_decr(i32 %158)
  %160 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %7, align 8
  %161 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %160, i32 0, i32 1
  store i64 0, i64* %161, align 8
  br label %162

162:                                              ; preds = %150, %144
  br label %163

163:                                              ; preds = %162, %136
  br label %164

164:                                              ; preds = %163, %115, %110
  %165 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %7, align 8
  %166 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %165, i32 0, i32 2
  store i32 1, i32* %166, align 8
  %167 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %7, align 8
  %168 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %167, i32 0, i32 3
  store i32 1, i32* %168, align 4
  br label %169

169:                                              ; preds = %164, %101
  %170 = load i32, i32* %14, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %169
  %173 = load %struct.sctp_tcb*, %struct.sctp_tcb** %9, align 8
  %174 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @SCTP_INP_READ_UNLOCK(i32 %175)
  br label %177

177:                                              ; preds = %172, %169
  %178 = load %struct.sctp_tcb*, %struct.sctp_tcb** %9, align 8
  %179 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %11, align 8
  %180 = load i32, i32* @SCTP_SO_NOT_LOCKED, align 4
  %181 = call i32 @sctp_free_a_chunk(%struct.sctp_tcb* %178, %struct.sctp_tmit_chunk* %179, i32 %180)
  %182 = load i32, i32* %13, align 4
  ret i32 %182
}

declare dso_local i32 @SCTP_INP_READ_LOCK(i32) #1

declare dso_local i32 @sctp_setup_tail_pointer(%struct.sctp_queued_to_read*) #1

declare dso_local i32 @sctp_add_to_tail_pointer(%struct.sctp_queued_to_read*, i32*, i32*) #1

declare dso_local i32 @sctp_ucount_decr(i32) #1

declare dso_local i32 @sctp_mark_non_revokable(%struct.sctp_association*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.sctp_queued_to_read*, i32) #1

declare dso_local i32 @SCTP_INP_READ_UNLOCK(i32) #1

declare dso_local i32 @sctp_free_a_chunk(%struct.sctp_tcb*, %struct.sctp_tmit_chunk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
